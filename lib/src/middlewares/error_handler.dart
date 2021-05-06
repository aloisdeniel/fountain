import 'package:fountain/src/event.dart';

import '../../fountain.dart';
import '../context.dart';

import 'middleware.dart';

/// This middleware catches all exceptions from middlewares below it and dispatches
/// a new event from its [onFailed] callback if so.
class ErrorHandler<TState> extends ApplicationMiddleware<TState> {
  const ErrorHandler(this.onFailed);

  /// Called whenever an [error] occurs while dispatching an [event] to
  /// dispatch a new event.
  final OnDispatchFailed<TState> onFailed;

  @override
  Stream<TState> call(
    ApplicationContext<TState> context,
    ApplicationEvent<TState> event,
    ApplicationNextMiddleware<TState> next,
  ) async* {
    final initialState = context.state;
    try {
      await for (final event in next(context, event)) {
        yield event;
      }
    } catch (error, stackTrace) {
      final errorEvent = onFailed(
        context,
        event,
        initialState,
        error,
        stackTrace,
      );

      await for (final event in call(context, errorEvent, next)) {
        yield event;
      }
    }
  }
}

/// An [error] occured while dispatching the [event].
///
/// The [initialState] is the state before the execution.
typedef ApplicationEvent<TState> OnDispatchFailed<TState>(
  ApplicationContext<TState> context,
  ApplicationEvent<TState> event,
  TState initialState,
  dynamic error,
  StackTrace stackTrace,
);

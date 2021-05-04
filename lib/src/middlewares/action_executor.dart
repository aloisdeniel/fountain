import 'package:logging/logging.dart';

import '../event.dart';
import 'middleware.dart';
import '../context.dart';

class ApplicationActionNotExecutableException implements Exception {}

typedef TState ApplicationStateUpdater<TState>(TState state);

/// An action is a portion of logic that will alterate the current
/// state of the application.
///
/// The middleware executes each action it receives by calling [call] and will propagate each new
/// resulting state to the application context. If the execution failed, then it will call [failed]
/// method to produce specific states.
///
/// See also :
/// * [ApplicationActionExecutor<TState>] which is the middleware that process actions.
/// * [ApplicationContext<TState>] which is the root context used by an action.
abstract class ApplicationAction<TState> extends ApplicationEvent<TState> {
  /// Creates a new action.
  const ApplicationAction();

  /// An action execution will update the [context]'s state by producing a stream of updates.
  ///
  /// The easier way to implement such a method is by using `async *` generators.
  Stream<ApplicationStateUpdater<TState>> call(
    ApplicationContext<TState> context,
  );

  /// If the execution failed because of the given [error] and [stackTrace], then this method
  /// is invoked with the [initialState], which is a snapshot of the application state before
  /// the execution of the action.
  ///
  /// By default, nothing is executed in case of a failure, but the `Logger.root` prints a
  /// message.
  Stream<ApplicationStateUpdater<TState>> failed(
    ApplicationContext<TState> context,
    TState initialState,
    dynamic error,
    StackTrace stackTrace,
  ) {
    Logger.root.severe('An action "$this" failed', error, stackTrace);
    return Stream<ApplicationStateUpdater<TState>>.empty();
  }

  /// Allows to block execution if the state isn't valid.
  ///
  /// Defaults to always `true`.
  bool canExecute(TState state) => true;
}

/// A middleware that executes all the received actions.
///
/// See also :
/// * [ApplicationAction<TState>] which is the base class for actions processed by this middleware.
class ApplicationActionExecutor<TState> extends ApplicationMiddleware<TState> {
  const ApplicationActionExecutor();
  @override
  Stream<TState> call(
    ApplicationContext<TState> context,
    ApplicationEvent<TState> event,
    ApplicationNextMiddleware<TState> next,
  ) async* {
    if (event is ApplicationAction<TState>) {
      final action = event;
      final initialState = context.state;
      try {
        if (!action.canExecute(context.state)) {
          throw ApplicationActionNotExecutableException();
        }
      } catch (e, st) {
        try {
          await for (final event
              in action.failed(context, initialState, e, st)) {
            yield event(context.state);
          }
        } catch (e, st) {
          print('Unexpected error: $e, $st');
        }
      }
    }

    await for (final event in next(context, event)) {
      yield event;
    }
  }
}

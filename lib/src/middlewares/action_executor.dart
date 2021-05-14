import 'package:flutter/widgets.dart';
import 'package:logging/logging.dart';

import '../event.dart';
import 'middleware.dart';
import '../context.dart';

class ActionNotExecutableException implements Exception {}

typedef Updater<TState> = TState Function(TState state);

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
abstract class Action<TState> extends Event {
  /// Creates a new action.
  const Action();

  dynamic throwNotExecutable() => throw ActionNotExecutableException();

  /// Creates a new action from a [call] function.
  ///
  /// The [id] identifies this particular action type.
  ///
  /// Inheriting from [ApplicationAction] is another way to define an action.
  const factory Action.function(
    String id,
    ApplicationFunctionCall<TState> call, {
    ApplicationFunctionCanExecute<TState>? canExecute,
    ApplicationFunctionFailed<TState>? failed,
  }) = FunctionAction;

  /// An action execution will update the [context]'s state by producing a stream of updates.
  ///
  /// The easier way to implement such a method is by using `async *` generators.
  Stream<Updater<TState>> call(
    Context<TState> context,
  );

  /// If the execution failed because of the given [error] and [stackTrace], then this method
  /// is invoked with the [initialState], which is a snapshot of the application state before
  /// the execution of the action.
  ///
  /// By default, nothing is executed in case of a failure, but the `Logger.root` prints a
  /// message.
  Stream<Updater<TState>> failed(
    Context<TState> context,
    TState initialState,
    dynamic error,
    StackTrace stackTrace,
  ) =>
      defaultFailed<TState>(context, initialState, error, stackTrace);

  static Stream<Updater<TState>> defaultFailed<TState>(
    Context<TState> context,
    TState initialState,
    dynamic error,
    StackTrace stackTrace,
  ) {
    Logger.root.severe('An action failed', error, stackTrace);
    return Stream<Updater<TState>>.empty();
  }

  /// Allows to block execution if the state isn't valid.
  ///
  /// Defaults to always `true`.
  bool canExecute(TState state) => defaultCanExecute(state);

  static bool defaultCanExecute<TState>(TState state) => true;
}

typedef Stream<Updater<TState>> ApplicationFunctionCall<TState>(
  Context<TState> context,
);

typedef Stream<Updater<TState>> ApplicationFunctionFailed<TState>(
  Context<TState> context,
  TState initialState,
  dynamic error,
  StackTrace stackTrace,
);

typedef bool ApplicationFunctionCanExecute<TState>(TState state);

class FunctionAction<TState> extends Action<TState> {
  /// Creates a new action.
  const FunctionAction(
    this.id,
    this._call, {
    ApplicationFunctionCanExecute<TState>? canExecute,
    ApplicationFunctionFailed<TState>? failed,
  })  : this._failed = failed,
        this._canExecute = canExecute;

  final String id;
  final ApplicationFunctionCall<TState> _call;
  final ApplicationFunctionCanExecute<TState>? _canExecute;
  final ApplicationFunctionFailed<TState>? _failed;

  @override
  Stream<Updater<TState>> call(
    Context<TState> context,
  ) =>
      _call(context);

  @override
  Stream<Updater<TState>> failed(
    Context<TState> context,
    TState initialState,
    dynamic error,
    StackTrace stackTrace,
  ) {
    if (_failed == null) {
      return Action.defaultFailed<TState>(
        context,
        initialState,
        error,
        stackTrace,
      );
    }
    return _failed!(context, initialState, error, stackTrace);
  }

  @override
  bool canExecute(TState state) {
    if (_failed == null) {
      return Action.defaultCanExecute<TState>(state);
    }
    return _canExecute!(state);
  }

  @override
  String toString() {
    return id;
  }
}

/// A middleware that executes all the received actions.
///
/// See also :
/// * [ApplicationAction<TState>] which is the base class for actions processed by this middleware.
class ActionExecutor<TState> extends Middleware<TState> {
  const ActionExecutor();
  @override
  Stream<TState> call(
    Context<TState> context,
    Event event,
    NextMiddleware<TState> next,
  ) async* {
    if (event is Action<TState>) {
      final action = event;
      final initialState = context.state;
      try {
        if (!action.canExecute(context.state)) {
          throw ActionNotExecutableException();
        }
        await for (final event in action(context)) {
          yield event(context.state);
        }
      } catch (e, st) {
        await for (final event in action.failed(context, initialState, e, st)) {
          yield event(context.state);
        }
      }
    }

    await for (final event in next(context, event)) {
      yield event;
    }
  }
}

extension BuildContextActionsExtensions on BuildContext {
  bool canExecute<TState>(Action<TState> action) =>
      action.canExecute(Context.of<TState>(this).state);
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'event.dart';
import 'middlewares/middleware.dart';

import 'provider.dart';

/// A [ChangeNotifier] that owns the global [state] of the application.
///
/// It relies on a seroes of [middlewares] to process events and to eventually produce new states.
///
/// The only way to alter the [state] is by [dispatch]ing actions.
///
/// See also :
///  * [ApplicationAction] which updates the state of the application.
class ApplicationContext<TState> extends ChangeNotifier {
  ApplicationContext({
    required TState initialState,
    required this.middlewares,
  }) : _state = initialState;

  TState _state;
  final StreamController<TState> _controller =
      StreamController<TState>.broadcast();

  TState get state => _state;

  final List<ApplicationMiddleware<TState>> middlewares;

  @protected
  set state(TState state) {
    if (_state != state) {
      this._state = state;
      this.notifyListeners();
    }
  }

  Stream<T> listen<T>(T Function(TState state) selector) {
    return _controller.stream.map((state) => selector(state)).distinct();
  }

  Future<void> dispatch(ApplicationEvent event) {
    ApplicationNextMiddleware<TState> next =
        (notifier, event) => Stream<TState>.empty();
    for (var middleware in middlewares.reversed) {
      final ApplicationNextMiddleware<TState> previousNext = next;
      next = (context, event) => middleware(context, event, previousNext);
    }

    return next(this, event).forEach((newState) => this.state = newState);
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  static ApplicationContext<TState> of<TState>(BuildContext context) {
    final state =
        context.findAncestorStateOfType<ApplicationProviderState<TState>>();
    return state!.applicationContext;
  }
}

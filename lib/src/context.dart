import 'dart:async';

import 'package:flutter/material.dart';
import 'event.dart';
import 'middlewares/middleware.dart';

import 'fountain.dart';
import 'service_locator.dart';

/// A [ChangeNotifier] that owns the global [state] of the application.
///
/// It relies on a seroes of [middlewares] to process events and to eventually produce new states.
///
/// The only way to alter the [state] is by [dispatch]ing actions.
///
/// See also :
///  * [ApplicationAction] which updates the state of the application.
class Context<TState> extends ChangeNotifier {
  Context({
    required TState initialState,
    required this.middlewares,
    List<Service> services = const <Service>[],
  })  : _state = initialState,
        assert(
          services.every(
            (x) => x.stateType == TState,
          ),
          'Registered services must be have a TState type of $TState',
        ),
        _services = services;

  TState _state;
  final StreamController<TState> _controller =
      StreamController<TState>.broadcast();

  TState get state => _state;

  final List<Service> _services;
  final List<Middleware<TState>> middlewares;
  late final ServiceLocator services = ServiceLocator(this, _services);

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

  Future<bool> until<T>(bool Function(TState state) predicate) {
    return _controller.stream.any(predicate);
  }

  Future<void> dispatch(Event event) {
    NextMiddleware<TState> next = (notifier, event) => Stream<TState>.empty();
    for (var middleware in middlewares.reversed) {
      final NextMiddleware<TState> previousNext = next;
      next = (context, event) => middleware(context, event, previousNext);
    }

    return next(this, event).forEach((newState) => this.state = newState);
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  static Context<TState> of<TState>(BuildContext context) {
    final state = context.findAncestorStateOfType<FountainState<TState>>();
    return state!.applicationContext;
  }
}

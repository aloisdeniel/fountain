import 'package:flutter/widgets.dart';
import 'package:fountain/src/event.dart';
import 'package:fountain/src/middlewares/action_executor.dart' as actions;
import 'package:fountain/src/middlewares/middleware.dart';
import 'package:fountain/src/service_locator.dart';

import 'context.dart';
import 'dispatcher.dart';
import 'fountain.dart';

class ProxyAccessor<TState, TChild> {
  const ProxyAccessor({
    required this.setter,
    required this.getter,
  });
  final ProxyGetter<TState, TChild> getter;
  final ProxySetter<TState, TChild> setter;
}

typedef TChild ProxyGetter<TState, TChild>(TState state);

typedef TState ProxySetter<TState, TChild>(TState previousState, TChild child);

/// Allows descendent to use `dispatch` an `select` methods with a [TChild] child property
/// of the global state, selected by the [selector].
class StateProxy<TState, TChild> extends StatelessWidget {
  const StateProxy({
    Key? key,
    required this.accessor,
    required this.child,
  }) : super(key: key);

  final ProxyAccessor<TState, TChild> accessor;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final childContext = ProxyApplicationContext<TState, TChild>(
      parent: Context.of<TState>(context),
      accessor: accessor,
    );
    final substate = Fountain.select<TState, TChild>(
        context, (state) => accessor.getter(state));
    return Dispatcher<TChild>(
      dispatch: (event) => childContext.dispatch(event),
      child: ApplicationStateInheritedProvider<TChild>(
        state: substate,
        child: child,
      ),
    );
  }
}

class ProxyApplicationContext<TState, TChild> implements Context<TChild> {
  const ProxyApplicationContext({
    required this.parent,
    required this.accessor,
  });

  final Context<TState> parent;
  final ProxyAccessor<TState, TChild> accessor;

  @override
  TChild get state => accessor.getter(parent.state);

  @override
  set state(TChild state) => throw Exception('Invalid');

  actions.Action<TState> _createParentAction(actions.Action<TChild> action) {
    return actions.Action<TState>.function(
      'Proxy[$TState~$TChild]:$action',
      (context) => action(this).map(
        (childState) => (parentState) => accessor.setter(
              parentState,
              childState(
                accessor.getter(parentState),
              ),
            ),
      ),
      canExecute: (parentState) =>
          action.canExecute(accessor.getter(parentState)),
      failed: (
        context,
        initialState,
        error,
        stackTrace,
      ) {
        return action
            .failed(this, accessor.getter(initialState), error, stackTrace)
            .map(
              (childState) => (parentState) => accessor.setter(
                    parentState,
                    childState(
                      accessor.getter(parentState),
                    ),
                  ),
            );
      },
    );
  }

  @override
  Future<void> dispatch(Event event) {
    final action = event;
    if (action is actions.Action<TChild>) {
      event = _createParentAction(action);
    }
    return parent.dispatch(event);
  }

  @override
  void addListener(listener) {
    parent.addListener(listener);
  }

  @override
  void removeListener(listener) {
    parent.removeListener(listener);
  }

  @override
  void dispose() {}

  @override
  bool get hasListeners => parent.hasListeners;

  @override
  Stream<T> listen<T>(T Function(TChild state) selector) {
    return parent.listen((state) => selector(accessor.getter(state)));
  }

  @override
  List<Middleware<TChild>> get middlewares => [];

  @override
  void notifyListeners() {
    parent.notifyListeners();
  }

  @override
  ServiceLocator get services => parent.services;

  @override
  Future<bool> until<T>(bool Function(TChild state) predicate) {
    return parent.until((state) => predicate(accessor.getter(state)));
  }
}

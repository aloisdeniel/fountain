import 'package:flutter/widgets.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:fountain/src/middlewares/action_executor.dart';

import '../fountain.dart';
import 'context.dart';
import 'dispatcher.dart';
import 'service_locator.dart';

typedef TState StateInitializer<TState>(BuildContext context);

class Fountain<TState> extends StatefulWidget {
  const Fountain({
    Key? key,
    required this.initialState,
    required this.child,
    this.services,
    this.middlewares,
  }) : super(key: key);

  final StateInitializer<TState> initialState;
  final List<Middleware<TState>>? middlewares;
  final List<Service>? services;
  final Widget child;

  static List<Middleware<TState>> defaultMiddlewares<TState>() => [
        ActionExecutor<TState>(),
      ];

  static T select<TState, T>(
      BuildContext context, Selector<TState, T> selector) {
    final Selector untypedSelector = (state) => selector(state);
    final provider =
        InheritedModel.inheritFrom<ApplicationStateInheritedProvider<TState>>(
      context,
      aspect: untypedSelector,
    );
    return selector(provider!.state);
  }

  @override
  FountainState<TState> createState() => FountainState<TState>();
}

class FountainState<TState> extends widgets.State<Fountain<TState>> {
  late Context<TState> applicationContext = Context<TState>(
    initialState: widget.initialState(context),
    services: widget.services ?? const <Service>[],
    middlewares: widget.middlewares ?? Fountain.defaultMiddlewares<TState>(),
  );

  late TState _lastState;

  @override
  void initState() {
    _lastState = applicationContext.state;
    applicationContext.addListener(_onStateUpdate);
    applicationContext.dispatch(InitApplicationEvent());
    super.initState();
  }

  void _onStateUpdate() {
    if (_lastState != applicationContext.state) {
      _lastState = applicationContext.state;
      setState(() {});
    }
  }

  @override
  void dispose() {
    applicationContext.removeListener(_onStateUpdate);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dispatcher<TState>(
      dispatch: (event) => applicationContext.dispatch(event),
      child: ApplicationStateInheritedProvider<TState>(
        state: applicationContext.state,
        child: widget.child,
      ),
    );
  }
}

typedef T Selector<TState, T>(TState state);

class ApplicationStateInheritedProvider<TState>
    extends InheritedModel<Selector> {
  const ApplicationStateInheritedProvider({
    Key? key,
    required this.state,
    required Widget child,
  }) : super(
          key: key,
          child: child,
        );

  final TState state;

  @override
  bool updateShouldNotify(
      covariant ApplicationStateInheritedProvider<TState> oldWidget) {
    return state != oldWidget.state;
  }

  @override
  bool updateShouldNotifyDependent(
      covariant ApplicationStateInheritedProvider<TState> oldWidget,
      Set<Selector> dependencies) {
    return dependencies.any(
      (selector) => selector(oldWidget.state) != selector(state),
    );
  }
}

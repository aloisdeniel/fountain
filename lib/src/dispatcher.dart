import 'package:flutter/widgets.dart';
import 'package:fountain/fountain.dart';

typedef Future<void> Dispatch(ApplicationEvent event);

class Dispatcher<TState> extends InheritedWidget {
  const Dispatcher({
    Key? key,
    required this.dispatch,
    required Widget child,
  }) : super(key: key, child: child);

  final Dispatch dispatch;

  static Dispatch of<TState>(BuildContext context) {
    final dispatcher =
        context.dependOnInheritedWidgetOfExactType<Dispatcher<TState>>();
    return dispatcher!.dispatch;
  }

  @override
  bool updateShouldNotify(covariant Dispatcher<TState> oldWidget) {
    return dispatch != oldWidget.dispatch;
  }
}

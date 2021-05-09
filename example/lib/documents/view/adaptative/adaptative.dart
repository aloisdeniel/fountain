import 'package:flutter/material.dart';

import 'data.dart';

export 'data.dart';

class Adaptative extends StatelessWidget {
  const Adaptative({
    Key? key,
    required this.child,
  }) : super(key: key);

  static AdaptativeData of(BuildContext context) {
    final inherited =
        context.dependOnInheritedWidgetOfExactType<InheritedAdaptative>();
    return inherited!.data;
  }

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final layout = () {
      if (mediaQuery.size.width > 512) {
        return AdaptativeLayout.large;
      }
      return AdaptativeLayout.small;
    }();
    final theme = () {
      if (mediaQuery.platformBrightness == Brightness.dark) {
        return AdaptativeTheme.dark;
      }
      return AdaptativeTheme.light;
    }();
    return InheritedAdaptative(
      child: child,
      data: AdaptativeData(
        layout: layout,
        theme: theme,
      ),
    );
  }
}

class InheritedAdaptative extends InheritedWidget {
  const InheritedAdaptative({
    Key? key,
    required Widget child,
    required this.data,
  }) : super(
          key: key,
          child: child,
        );

  final AdaptativeData data;

  @override
  bool updateShouldNotify(covariant InheritedAdaptative oldWidget) {
    return data != oldWidget.data;
  }
}

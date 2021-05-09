import 'package:example/documents/view/adaptative/adaptative.dart';
import 'package:example/documents/view/theme/values.dart';
import 'package:flutter/material.dart';

import 'data.dart';

export 'data.dart';

class AppTheme extends StatelessWidget {
  const AppTheme({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  static AppThemeData of(BuildContext context) {
    final inherited =
        context.dependOnInheritedWidgetOfExactType<InheritedAppTheme>();
    return inherited!.data;
  }

  @override
  Widget build(BuildContext context) {
    final adaptative = Adaptative.of(context);
    return InheritedAppTheme(
      child: child,
      data: AppThemeData(
        color: colors[adaptative.theme]!,
        edgeInsets: edgeInsets[adaptative.layout]!,
        textStyle: textStyles[adaptative.layout]!,
        borderRadius: borderRadius[adaptative.layout]!,
        durations: durations,
      ),
    );
  }
}

class InheritedAppTheme extends InheritedWidget {
  const InheritedAppTheme({
    Key? key,
    required Widget child,
    required this.data,
  }) : super(
          key: key,
          child: child,
        );

  final AppThemeData data;

  @override
  bool updateShouldNotify(covariant InheritedAppTheme oldWidget) {
    return data != oldWidget.data;
  }
}

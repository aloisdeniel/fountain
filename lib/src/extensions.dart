import 'package:flutter/material.dart';
import 'package:fountain/src/event.dart';
import 'package:fountain/src/provider.dart';

import 'context.dart';
import 'dispatcher.dart';

extension BuildContextFountainExtensions on BuildContext {
  T select<TState, T>(Selector<TState, T> selector) =>
      ApplicationProvider.select(this, selector);

  Stream<T> listen<TState, T>(Selector<TState, T> selector) =>
      ApplicationContext.of<TState>(this).listen(selector);

  Future<void> dispatch<TState>(ApplicationEvent event) =>
      Dispatcher.of<TState>(this)(event);
}

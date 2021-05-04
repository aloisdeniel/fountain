import 'package:flutter/material.dart';
import 'package:fountain/src/event.dart';
import 'package:fountain/src/provider.dart';

import 'context.dart';

extension BuildContextFountainExtensions on BuildContext {
  T select<TState, T>(Selector<TState, T> selector) =>
      ApplicationProvider.select(this, selector);

  Stream<T> listen<TState, T>(Selector<TState, T> selector) =>
      ApplicationContext.of<TState>(this).listen(selector);

  Future<void> dispatch<TState>(ApplicationEvent<TState> event) =>
      ApplicationContext.of<TState>(this).dispatch(event);
}

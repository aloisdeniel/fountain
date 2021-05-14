import 'package:flutter/material.dart';
import 'package:fountain/src/event.dart';
import 'package:fountain/src/fountain.dart';

import 'context.dart';
import 'dispatcher.dart';

extension BuildContextFountainExtensions on BuildContext {
  T select<TState, T>(Selector<TState, T> selector) =>
      Fountain.select(this, selector);

  Stream<T> listen<TState, T>(Selector<TState, T> selector) =>
      Context.of<TState>(this).listen(selector);

  Future<void> dispatch<TState>(Event event) =>
      Dispatcher.of<TState>(this)(event);
}

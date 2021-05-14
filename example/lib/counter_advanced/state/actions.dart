import 'dart:math';

import 'package:example/counter_advanced/state/state.dart';
import 'package:fountain/fountain.dart';

class AddAction extends Action<CounterState> {
  const AddAction(this.value);

  final int value;

  @override
  Stream<Updater<CounterState>> call(
    Context<CounterState> context,
  ) async* {
    yield (state) => CounterState(
          min(state.count + value, state.max),
          state.max,
        );
  }

  @override
  String toString() => 'Add(${value > 0 ? '+' : ''}$value)';
}

/// A function can also be used when no argument is required.
final resetAction = Action<CounterState>.function(
  'Reset',
  (context) async* {
    yield (state) => CounterState(0, state.max);
  },
);

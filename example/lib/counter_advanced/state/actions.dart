import 'dart:math';

import 'package:example/counter_advanced/state/state.dart';
import 'package:fountain/fountain.dart';

class AddAction extends ApplicationAction<CounterState> {
  const AddAction(this.value);

  final int value;

  @override
  Stream<ApplicationStateUpdater<CounterState>> call(
    ApplicationContext<CounterState> context,
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
final resetAction = ApplicationAction<CounterState>.function(
  'Reset',
  (context) async* {
    yield (state) => CounterState(0, state.max);
  },
);

import 'dart:io';
import 'dart:math';

import 'package:example/counter_advanced/state/state.dart';
import 'package:fountain/fountain.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

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

class SaveAction extends ApplicationAction<CounterState> {
  @override
  Stream<ApplicationStateUpdater<CounterState>> call(
    ApplicationContext<CounterState> context,
  ) async* {
    final documents = await getApplicationDocumentsDirectory();
    await File(join(documents.path, 'cache'))
        .writeAsString(context.state.count.toString());
  }

  @override
  String toString() => 'Save';
}

class LoadAction extends ApplicationAction<CounterState> {
  @override
  Stream<ApplicationStateUpdater<CounterState>> call(
    ApplicationContext<CounterState> context,
  ) async* {
    final documents = await getApplicationDocumentsDirectory();
    final content = await File(join(documents.path, 'cache')).readAsString();
    final count = int.parse(content);
    yield (state) => CounterState(min(count, state.max), state.max);
  }

  @override
  String toString() => 'Load';
}

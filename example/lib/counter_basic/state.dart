import 'package:fountain/fountain.dart';

class CounterState {
  factory CounterState.initial() => const CounterState(0);
  const CounterState(this.count);
  final int count;
}

class AddAction extends Action<CounterState> {
  const AddAction(this.value);

  final int value;

  @override
  Stream<Updater<CounterState>> call(
    Context<CounterState> context,
  ) async* {
    yield (state) => CounterState(state.count + value);
  }
}

class ResetAction extends Action<CounterState> {
  const ResetAction();

  @override
  Stream<Updater<CounterState>> call(
    Context<CounterState> context,
  ) async* {
    yield (state) => CounterState.initial();
  }
}

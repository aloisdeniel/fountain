class CounterState {
  factory CounterState.initial() => const CounterState(0, 10);
  const CounterState(this.count, this.max);
  final int count;
  final int max;
  bool get isMax => count >= max;
}

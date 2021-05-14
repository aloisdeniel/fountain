import 'package:example/counter_advanced/state/state.dart';
import 'package:fountain/fountain.dart';

enum Mock {
  min,
  max,
  inBetween,
}

class SetMock extends Event {
  SetMock(this.mock);
  final Mock mock;
}

class EnableMock extends Event {
  const EnableMock(this.isEnabled);
  final bool isEnabled;
}

/// This is an example middleware that force state of the app from the given [Mock].
class Mocking extends Middleware<CounterState> {
  Mocking({
    this.isEnabled = false,
    this.mock = Mock.min,
  });

  bool isEnabled;
  Mock mock;

  CounterState buildStateForMock() {
    switch (mock) {
      case Mock.min:
        return CounterState(0, 10);
      case Mock.inBetween:
        return CounterState(5, 10);
      case Mock.max:
        return CounterState(10, 10);
    }
  }

  @override
  Stream<CounterState> call(
    Context<CounterState> context,
    Event event,
    NextMiddleware<CounterState> next,
  ) async* {
    if (event is EnableMock) {
      isEnabled = event.isEnabled;
      if (isEnabled) {
        yield buildStateForMock();
      }
    }

    if (event is SetMock) {
      if (mock != event.mock) {
        mock = event.mock;
        if (isEnabled) {
          yield buildStateForMock();
        }
      }
    }
    // Note that we're not using next to ignore any update under this middleware.
    if (!isEnabled) {
      await for (final state in next(context, event)) {
        yield state;
      }
    }
  }
}

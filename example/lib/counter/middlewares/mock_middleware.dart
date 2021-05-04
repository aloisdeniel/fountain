import 'package:fountain/fountain.dart';

import '../main.dart';

enum Mock {
  min,
  max,
  inBetween,
}

class UpdateMock extends ApplicationEvent<CounterState> {
  UpdateMock(this.mock);
  final Mock mock;
}

/// This is an example middleware that force state of the app from the given [Mock].
class Mocking extends ApplicationMiddleware<CounterState> {
  const Mocking();

  @override
  Stream<CounterState> call(
    ApplicationContext<CounterState> context,
    ApplicationEvent<CounterState> event,
    ApplicationNextMiddleware<CounterState> next,
  ) async* {
    if (event is UpdateMock) {
      switch (event.mock) {
        case Mock.min:
          yield CounterState(0, 10);
          break;
        case Mock.inBetween:
          yield CounterState(5, 10);
          break;
        case Mock.max:
          yield CounterState(10, 10);
          break;
      }
    }
    // Note that we're not using next to ignore any update under this middleware.
  }
}

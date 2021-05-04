import 'package:fountain/fountain.dart';

import '../main.dart';

/// This is an example middleware that logs actions to a a virtual analytics provider.
class Analytics extends ApplicationMiddleware<CounterState> {
  const Analytics();

  void log(String eventName, Map<String, String> arguments) {
    // This could be a Firebase Analytics call
    print('[Analytics] $eventName : $arguments');
  }

  @override
  Stream<CounterState> call(
    ApplicationContext<CounterState> context,
    ApplicationEvent<CounterState> event,
    ApplicationNextMiddleware<CounterState> next,
  ) async* {
    await for (final state in next(context, event)) {
      if (event is AddAction) {
        log('add', {
          'newCount': state.count.toString(),
        });
      } else if (event is ResetAction) {
        log('add', {});
      }
    }
  }
}

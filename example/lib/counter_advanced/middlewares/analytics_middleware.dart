import 'package:example/counter_advanced/state/actions.dart';
import 'package:example/counter_advanced/state/state.dart';
import 'package:fountain/fountain.dart';
import 'package:fountain/middlewares.dart';

/// This is an example middleware that logs actions to a a virtual analytics provider.
class Analytics extends Middleware<CounterState> {
  const Analytics();

  void log(String eventName, Map<String, String> arguments) {
    // This could be a Firebase Analytics call
    print('[Analytics] $eventName : $arguments');
  }

  @override
  Stream<CounterState> call(
    Context<CounterState> context,
    Event event,
    NextMiddleware<CounterState> next,
  ) async* {
    await for (final state in next(context, event)) {
      yield state;
      if (event is AddAction) {
        log('add', {
          'newCount': state.count.toString(),
        });
      } else if (event is FunctionAction<CounterState>) {
        log(event.id, {});
      }
    }
  }
}

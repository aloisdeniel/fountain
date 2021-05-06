import 'package:fountain/src/event.dart';

import '../context.dart';

import 'middleware.dart';

class Memento<TState> extends ApplicationMiddleware<TState> {
  Memento({
    this.historySize = 50,
  });

  final int historySize;
  final List<TState> history = <TState>[];

  @override
  Stream<TState> call(
    ApplicationContext<TState> context,
    ApplicationEvent event,
    ApplicationNextMiddleware<TState> next,
  ) async* {
    if (event is Undo<TState>) {
      history.removeLast();
      yield history.last;
    } else {
      await for (final state in next(context, event)) {
        history.add(state);
        yield state;
      }
    }
  }
}

class Undo<TState> extends ApplicationEvent {}

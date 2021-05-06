import 'dart:async';

import 'package:fountain/fountain.dart';
import 'package:fountain/src/event.dart';

import '../context.dart';

import 'middleware.dart';

class Persistence<TState> extends ApplicationMiddleware<TState> {
  const Persistence({
    required this.storage,
  });

  final Storage<TState> storage;
  @override
  Stream<TState> call(
    ApplicationContext<TState> context,
    ApplicationEvent<TState> event,
    ApplicationNextMiddleware<TState> next,
  ) async* {
    if (event is InitApplicationEvent<TState>) {
      final loadedState = await storage.load();
      if (loadedState != null) {
        yield loadedState;
      }
    }

    await for (final state in next(context, event)) {
      yield state;
      await storage.save(state);
    }
  }
}

abstract class Storage<TState> {
  Future<void> save(TState state);
  Future<TState?> load();
}

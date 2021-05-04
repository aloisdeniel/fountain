import 'dart:async';

import 'package:fountain/src/event.dart';

import '../context.dart';

import 'middleware.dart';

class Persistence<TState> extends ApplicationMiddleware<TState> {
  Persistence({
    required this.storage,
  });

  final Storage<TState> storage;
  bool _isLoaded = false;
  @override
  Stream<TState> call(
    ApplicationContext<TState> context,
    ApplicationEvent<TState> event,
    ApplicationNextMiddleware<TState> next,
  ) async* {
    if (!_isLoaded) {
      final loadedState = await storage.load();
      _isLoaded = true;
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

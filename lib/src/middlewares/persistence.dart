import 'dart:async';

import 'package:fountain/fountain.dart';
import 'package:fountain/src/event.dart';
import 'package:throttling/throttling.dart';

import '../context.dart';

import 'middleware.dart';

class ClearPersistence extends Event {
  const ClearPersistence();
}

class Persistence<TState> extends Middleware<TState> {
  Persistence({
    required this.storage,
    Duration debouncing = const Duration(seconds: 1),
  }) : this._debouncing = Throttling(
          duration: debouncing,
        );

  final StateStorage<TState> storage;

  final Throttling _debouncing;

  @override
  Stream<TState> call(
    Context<TState> context,
    Event event,
    NextMiddleware<TState> next,
  ) async* {
    if (event is InitApplicationEvent) {
      final loadedState = await storage.load();
      if (loadedState != null) {
        yield loadedState;
      }
    }

    if (event is ClearPersistence) {
      await storage.clear();
    } else {
      await for (final state in next(context, event)) {
        yield state;

        _debouncing.throttle(() async {
          await storage.save(context.state);
        });
      }
    }
  }
}

abstract class StateStorage<TState> {
  Future<void> save(TState state);
  Future<TState?> load();
  Future<void> clear();
}

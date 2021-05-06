import 'dart:async';

import 'package:fountain/src/event.dart';

import '../../fountain.dart';
import '../context.dart';

import 'middleware.dart';

enum MultiEventMode {
  queue,
  parralel,
}

class MultiEvent<TState> extends ApplicationEvent {
  const MultiEvent.queue(this.events) : this.mode = MultiEventMode.queue;
  const MultiEvent.parralel(this.events) : this.mode = MultiEventMode.queue;
  final MultiEventMode mode;
  final List<ApplicationEvent> events;
}

/// This middleware allows to dispatch a set of events.
class Multi<TState> extends ApplicationMiddleware<TState> {
  const Multi();

  @override
  Stream<TState> call(
    ApplicationContext<TState> context,
    ApplicationEvent event,
    ApplicationNextMiddleware<TState> next,
  ) async* {
    if (event is MultiEvent<TState>) {
      if (event.mode == MultiEventMode.queue) {
        for (var child in event.events) {
          await for (final state in next(context, child)) {
            yield state;
          }
        }
      } else {
        final mergeController = StreamController<TState>();
        var registeredEvents = event.events.length;
        event.events.map(
          (x) => next(context, x).listen((state) {
            mergeController.add(state);
          }, onError: (error, stackTrace) {
            throw error;
          }, onDone: () {
            registeredEvents--;
            if (registeredEvents == 0) {
              mergeController.close();
            }
          }),
        );
        await for (final state in mergeController.stream) {
          yield state;
        }
      }
    } else {
      await for (final state in next(context, event)) {
        yield state;
      }
    }
  }
}

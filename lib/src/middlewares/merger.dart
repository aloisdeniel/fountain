import 'dart:async';

import 'package:fountain/src/event.dart';

import '../context.dart';

import 'middleware.dart';

/// Ignore duplicated concurent events.
class EventMerger<TState> extends Middleware<TState> {
  EventMerger({
    required this.eventTypes,
  });

  final List<Type> eventTypes;

  final List<EventProcessing<TState>> processedEvents =
      <EventProcessing<TState>>[];

  @override
  Stream<TState> call(
    Context<TState> context,
    Event event,
    NextMiddleware<TState> next,
  ) async* {
    if (eventTypes.contains(event.runtimeType)) {
      final existing =
          processedEvents.cast<EventProcessing<TState>?>().firstWhere(
                (x) => x!.event.runtimeType == event.runtimeType,
                orElse: () => null,
              );
      if (existing != null) {
        await existing.updates.toList();
      } else {
        final controller = StreamController<TState>();
        final processing = EventProcessing(event, controller.stream);
        processedEvents.add(processing);
        await for (final state in next(context, event)) {
          yield state;
          controller.add(state);
        }
        processedEvents.remove(processing);
        controller.close();
      }
    }
  }
}

class EventProcessing<TState> {
  const EventProcessing(this.event, this.updates);
  final Event event;
  final Stream<TState> updates;
}

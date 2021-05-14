import 'package:fountain/src/context.dart';
import 'package:fountain/src/event.dart';

abstract class Middleware<TState> {
  const Middleware();
  Stream<TState> call(
    Context<TState> context,
    Event event,
    NextMiddleware<TState> next,
  );
}

typedef Stream<TState> NextMiddleware<TState>(
  Context<TState> context,
  Event event,
);

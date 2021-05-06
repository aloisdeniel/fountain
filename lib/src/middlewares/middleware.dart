import 'package:fountain/src/context.dart';
import 'package:fountain/src/event.dart';

abstract class ApplicationMiddleware<TState> {
  const ApplicationMiddleware();
  Stream<TState> call(
    ApplicationContext<TState> context,
    ApplicationEvent event,
    ApplicationNextMiddleware<TState> next,
  );
}

typedef Stream<TState> ApplicationNextMiddleware<TState>(
  ApplicationContext<TState> context,
  ApplicationEvent event,
);

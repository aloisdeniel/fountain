import 'package:fountain/src/event.dart';
import 'package:logging/logging.dart';

import '../context.dart';

import 'middleware.dart';

class ApplicationLogger<TState> extends ApplicationMiddleware<TState> {
  const ApplicationLogger({
    this.logger,
    this.logState = false,
  });

  static int _uniqueId = 1;

  final Logger? logger;
  final bool logState;

  @override
  Stream<TState> call(
    ApplicationContext<TState> context,
    ApplicationEvent<TState> event,
    ApplicationNextMiddleware<TState> next,
  ) async* {
    final logger = this.logger ?? Logger.root;
    final executionId = _uniqueId++;
    final stopwatch = Stopwatch()..start();
    logger.fine('[$event]($executionId) Starting');
    await for (final state in next(context, event)) {
      yield state;
      if (logState) {
        logger.fine('[$event]($executionId) State updated : $state');
      }
    }
    logger.fine('[$event]($executionId) Finished after ${stopwatch.elapsed}');
  }
}

import 'package:fountain/fountain.dart';

/// A locator that allows to create external services for the current state.
class ServiceLocator<TState> {
  /// Create a locator from a state reader.
  const ServiceLocator(
    this._context,
    this.services,
  );

  final ApplicationContext<TState> _context;
  final List<Service> services;

  /// Create a [Service] instance for the current state.
  ///
  /// If multiple [Service]s are registered, a [name] can be provided to identify
  /// the needed service.
  TService create<TService>([String name = Service.defaultName]) {
    final service = services.firstWhere(
      (x) => x.name == name && x.serviceType == TService,
      orElse: () => throw Exception(
          'No registered service for type $TService and name $name'),
    );

    return service(_context) as TService;
  }
}

class Service<TState, TService> {
  const Service({
    this.name = defaultName,
    required this.builder,
  });

  static const String defaultName = '_';

  final String name;
  final ServiceBuilder<TState, TService> builder;
  Type get stateType => TState;
  Type get serviceType => TService;

  TService call(ApplicationContext<TState> context) => builder(context);
}

/// Instanciates a service for the current [context].
typedef ServiceBuilder<TState, TService> = TService Function(
  ApplicationContext<TState> context,
);

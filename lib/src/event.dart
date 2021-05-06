abstract class ApplicationEvent {
  static const ApplicationEvent empty = EmptyApplicationEvent._();
  const ApplicationEvent();
}

/// An event that is dispatched right after initialization.
class InitApplicationEvent extends ApplicationEvent {
  const InitApplicationEvent();
}

/// An event that is dispatched right after initialization.
class EmptyApplicationEvent extends ApplicationEvent {
  const EmptyApplicationEvent._();
}

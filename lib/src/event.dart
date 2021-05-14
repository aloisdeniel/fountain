abstract class Event {
  static const Event empty = EmptyApplicationEvent._();
  const Event();
}

/// An event that is dispatched right after initialization.
class InitApplicationEvent extends Event {
  const InitApplicationEvent();
}

/// An event that is dispatched right after initialization.
class EmptyApplicationEvent extends Event {
  const EmptyApplicationEvent._();
}

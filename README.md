English | [Portuguese](documentation/pt_br/README.md)

![logo](https://github.com/aloisdeniel/fountain/raw/main/images/logo.png)

The modular state management solution for flutter.

* *Easy debugging* : each event is predictable and goes into a single pipeline
* *Centralized state* : solid state validation
* *Power of async generators* : writing asynchronous code is easy thanks to Dart generators

## Quickstart

The global logical state of our application :

```dart
class CounterState {
  factory CounterState.initial() => const CounterState(0, 10);
  const CounterState(this.count, this.max);
  final int count;
  final int max;
  bool get isMax => count >= max;
}
```

The available actions that alterate the logical state of the application :

```dart
class AddAction extends Action<CounterState> {
  const AddAction(this.value);
  final int value;
  @override
  Stream<Updater<CounterState>> call(
    Context<CounterState> context,
  ) async* {
    yield (state) => CounterState(min(state.count + value, state.max), state.max);
  }
}

class ResetAction extends Action<CounterState> {
  @override
  Stream<Updater<CounterState>> call(
    Context<CounterState> context,
  ) async* {
    yield (state) => CounterState(0, state.max);
  }
}

class SaveAction extends Action<CounterState> {
  @override
  Stream<Updater<CounterState>> call(
    Context<CounterState> context,
  ) async* {
    await File(_cachePath).writeAsString(context.state.count.toString());
  }
}

class LoadAction extends Action<CounterState> {
  @override
  Stream<Updater<CounterState>> call(
    Context<CounterState> context,
  ) async* {
    final content = await File(_cachePath).readAsString();
    final count = int.parse(content);
    yield (state) => CounterState(min(count, state.max), state.max);
  }
}
```

The view that subscribes to the state changes and dispatches actions :

```dart
class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Builder(
              builder: (context) {
                /// This widget will be rebuilt each time the `count` value changes
                final count =
                    context.select((CounterState state) => state.count);
                return Text(
                  '$count',
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Builder(
        builder: (context) {
          /// This widget will be rebuilt each time the `isMax` value changes
          final isMax = context.select((CounterState state) => state.isMax);
          if (isMax) {
            return FloatingActionButton(
              /// The action is executed in the [ApplicationContext].
              onPressed: () => context.dispatch<CounterState>(ResetAction()),
              tooltip: 'Reset',
              child: Icon(Icons.delete),
            );
          }

          return FloatingActionButton(
            /// The action is executed in the [ApplicationContext].
            onPressed: () => context.dispatch<CounterState>(AddAction(1)),
            tooltip: 'Increment',
            child: Icon(Icons.add),
          );
        },
      ),
    );
  }
}
```

The state initialization at the root of the tree with the `Fountain` widget :

```dart
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Fountain(
      initialState: (context) => CounterState.initial(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
      ),
    );
  }
}
```

## Core concepts

![schema](https://github.com/aloisdeniel/fountain/raw/main/images/schema.png)

### Context<State>

The application context maintains a unique global logical immutable state for the application.

The context also contains all the middlewares that will process the dispatched event.

The application context is provided to the widget tree from a `Fountain` so that any descendent widget can observe a property of the state with the `select` extension method. It can also dispatch events into the middlewares with the `dispatch` extension methods.

### Middleware

The application middleware process the dispatched `Event`s and can produce state updates.

They are composable by nature which means that each middleware can wrap another middleware.

### Event

The events are inputs for middlewares. They can describe a user action, or a system event for exemple. They are processed by the middlewares which can produce new application states.

## Included middlewares

To import middlewares, use the `import 'package:fountain/middlewares.dart';` directive.

### Actions

By default, the framework includes a `ActionExecutor<TState>` middleware that allows to define `Action<TState>`s which are then invoked directly to produce new states.

#### Defining an action 

To create custom actions, inherits from `Action<TState>` and implement all of the update logic in the `call` method. Since the method returns a `Stream`, a convenient way to implement the logic is often by using `async *` generators which allows to `yield` a sequence of state updates.

```dart
class RefreshAction extends Action<MyApp> {
  const RefreshAction();

  @override
  Stream<Updater<CounterState>> call(
    Context<CounterState> context,
  ) async* {
    if(!context.state.isLoading) {
        yield (state) => state.copyWith(
            isLoading: true,
        );

        final news = await Api.instance.getNews();

        yield (state) => state.copyWith(
            isLoading: false,
            news: news,
        );
    }
  }
}
```

> Note that the actions aren't yielding states directly, but `Updater`s. This is to insist on the fact the the initial state may have changed during the action execution, and therefore, it must be taken into account when updated.

### Logging

The framework also includes a `Logging` middleware that logs all events and state updates.

```dart
Fountain(
    middlewares: <Middleware<CounterState>>[
        Logging<CounterState>(),
        ...Fountain.defaultMiddlewares<CounterState>(),
    ],
    // ...
);
```

### ErrorHandler

This middleware catches all unmanaged exceptions from middlewares below it and dispatches new events if so.

```dart
Fountain(
    middlewares: <Middleware<CounterState>>[
        ErrorHandler<CounterState>(
            (context, event, initialState,error,stackTrace) {
                // An unknow error occured during event processing
                return DisplayAlertAction('Sorry, an error occured');
            },
        ),
        ...Fountain.defaultMiddlewares<CounterState>(),
    ],
    // ...
);
```

##  About

### Wait ... yet another state management solution for Flutter ?

Fountain is not so new to me, I've used this approach for a longtime now. Centralizing it as an opensource library makes a lot of sense to create a standard for a all of my personal and professional projects.

### Inspired by

This project stands on the shoulders of giants, with the intention of reducing boilerplate, being minimalist and simple at its core.

* [Redux](https://pub.dev/packages/redux) for the functional update cycle and general principles, with the purpose of having less boilerplate by being a bit more opiniated.
* [Express](https://expressjs.com/) | [Koa](https://koajs.com/) for their composability and modularity thanks to middlewares.
* [Bloc](https://pub.dev/packages/bloc) for its use of Streams.
* [Provider](https://pub.dev/documentation/provider/latest/provider/SelectContext.html) for its `select` method.

### How is it different from other popular solutions ?

* [Provider](https://pub.dev/packages/provider) : Fountain is more opiniated than Provider, and thus Provider is a more general purpose tool. Provider is often used in combination with a `ChangeNotifier` to create a simple state management solution.
* [Redux](https://pub.dev/packages/flutter_redux) : Fountain has the same overall philosophy than Redux with `Thunks` but brings less boilerplate when dealing with asynchronous logic with `ApplicationAction`s logic by using `Stream`s. Fountain also brings the middleware concepts.
* [Bloc](https://pub.dev/packages/flutter_bloc) : Fountain use a global state instead of various `Blocs`. We believe it is important since there's a lot of areas which need to be aware of another part of your app logic. This makes also persistence, testability easier to deal with.
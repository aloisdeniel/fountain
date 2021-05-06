![logo](https://github.com/aloisdeniel/fountain/raw/main/images/logo.png)

A solução de gerenciamento de estado modular para o Flutter.

- _Fácil de debugar_: cada evento e previsível e vai para uma única pipeline
- _Estado centralizado_: validação solida do estado
- _Todo poder dos geradores async_: escrever código assíncrono e fácil graças ao geradores do Dart

## Guia inicial

A lógica global do estado da nossa aplicação:

```dart
class CounterState {
  factory CounterState.initial() => const CounterState(0, 10);
  const CounterState(this.count, this.max);
  final int count;
  final int max;
  bool get isMax => count >= max;
}
```

As ações disponíveis que alteram a logica de estado da aplicação:

```dart
class AddAction extends ApplicationAction<CounterState> {
  const AddAction(this.value);
  final int value;
  @override
  Stream<ApplicationStateUpdater<CounterState>> call(
    ApplicationContext<CounterState> context,
  ) async* {
    yield (state) => CounterState(min(state.count + value, state.max), state.max);
  }
}

class ResetAction extends ApplicationAction<CounterState> {
  @override
  Stream<ApplicationStateUpdater<CounterState>> call(
    ApplicationContext<CounterState> context,
  ) async* {
    yield (state) => CounterState(0, state.max);
  }
}

class SaveAction extends ApplicationAction<CounterState> {
  @override
  Stream<ApplicationStateUpdater<CounterState>> call(
    ApplicationContext<CounterState> context,
  ) async* {
    await File(_cachePath).writeAsString(context.state.count.toString());
  }
}

class LoadAction extends ApplicationAction<CounterState> {
  @override
  Stream<ApplicationStateUpdater<CounterState>> call(
    ApplicationContext<CounterState> context,
  ) async* {
    final content = await File(_cachePath).readAsString();
    final count = int.parse(content);
    yield (state) => CounterState(min(count, state.max), state.max);
  }
}
```

A view que se inscreve para ouvir as mudanças de estado e as ações disparadas:

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
                /// Esse widget será reconstruído cada vez que o valor de `count` mudar
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
          /// Esse widget será reconstruído cada vez que o valor de `isMax` mudar
          final isMax = context.select((CounterState state) => state.isMax);
          if (isMax) {
            return FloatingActionButton(
              /// A ação é executada no [ApplicationContext].
              onPressed: () => context.dispatch<CounterState>(ResetAction()),
              tooltip: 'Reset',
              child: Icon(Icons.delete),
            );
          }

          return FloatingActionButton(
            /// A ação é executada no [ApplicationContext].
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

A inicialização do estado:

```dart
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ApplicationProvider(
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

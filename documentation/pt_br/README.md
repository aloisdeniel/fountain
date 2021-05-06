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

## Conceitos principais

![schema](https://github.com/aloisdeniel/fountain/raw/main/images/schema.png)

### ApplicationContext<State>

O contexto da aplicação mantém um único estado global logico e imutável para a aplicação.

O contexto também contém todos os middlewares que irão processar os eventos disparados.

O contexto da aplicação é provido a árvore de widget através de um `ApplicationProvider`, dessa forma, qualquer widget descendente pode observar as propriedades do estado usando o método de extensão `select`. Ele também pode disparar eventos para os middlewares usando o método de extensão `dispatch`.

### ApplicationMiddleware

O middleware de aplicação processa os `ApplicationEvent`s (eventos da aplicação) e pode produzir atualizações do estado.

Eles são combináveis por natureza, o que significa que cada middleware pode conter outro middleware.

### ApplicationEvent

Os eventos são entradas para os middlewares. Eles podem descrever uma ação do usuário, ou um evento do sistema por exemplo. Os eventos são processados pelos middlewares que podem produzir novos estados da aplicação.

## Middlewares inclusos

### Ações

Por padrão, o framework incluí um middleware `ApplicationActionExecutor` que permite definir `ApplicationAction`s (ações da aplicação) que depois são diretamente invocados para produzir novos estados.

#### Definindo uma ação

Para criar uma ação customizada, herde de `ApplicationAction<TState>` e implemente toda a logica de atualizações no método `call`. Já que o método retorna uma `Stream`, uma maneira conveniente de implementar a lógica é comumente usando geradores assíncronos (`async*`) que permite produzir (`yield`) uma sequência de atualizações do estado.

```dart
class RefreshAction extends ApplicationAction<MyApp> {
  const RefreshAction();

  @override
  Stream<ApplicationStateUpdater<CounterState>> call(
    ApplicationContext<CounterState> context,
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

> Observe que a ação não está produzindo estados diretamente, mas sim `estados de atualização da aplicação (ApplicationStateUpdater)`. Isso implica no fato de que o estado inicial pode ter mudado durante a execução da ação, e deve ser levado em consideração quando atualizado.

### Logger

O framework também incluí um middleware `ApplicationLogger` que registra todas as ações e atualizações de estado.

## Sobre

### Espera ... mais uma solução de gerenciamento de estado para o Flutter?

Fountain não é tão novo para mim, Eu venho usando essa abordagem por muito tempo. Centralizá-lo como uma biblioteca de código aberto (opensource), faz muito sentido para criar um padrão para todos meus projetos pessoais e profissionais.

### Inspirado por

Esse projeto está sobre o ombro de gigantes, coma intenção de reduzir boilerplate, sendo minimalista e simples em sua essência.

- [Redux](https://pub.dev/packages/redux) por sua atualização funcional e princípios em geral, com o proposito de ter menos boilerplate por ser um pouco mais opinativo.
- [Express](https://expressjs.com/) | [Koa](https://koajs.com/) por sua composição e modularidade graças aos middlewares.
- [Bloc](https://pub.dev/packages/bloc) por seu uso das Streams.
- [Provider](https://pub.dev/documentation/provider/latest/provider/SelectContext.html) por seu método `select`.

### Como o Fountain é diferente de outras soluções populares?

- [Provider](https://pub.dev/packages/provider): Fountain é mais opinativo que o Provider, sendo que o Provider é mais uma ferramenta de uso geral. O Provider é normalmente usado em conjunto com o `ChangeNotifier` para criar uma solução simples de gerenciamento de estado.
- [Redux](https://pub.dev/packages/flutter_redux): Fountain tem a mesma filosofia geral que o Redux com `Thunks`, mas traz menos boilerplate ao lidar com lógicas assíncronas através de `ApplicationAction (ações)` que fazem o uso de `Stream (fluxo de dados)`. Fountain também traz o conceito de middleware.
- [Bloc](https://pub.dev/packages/flutter_bloc): Fountain usa um estado global ao invés de vários `Blocs (componentes de regra de negócio)`. Nós acreditamos que isso é importante já que tem muitas partes que precisam conhecer outras partes da lógica do seu aplicativo. Isso também torna mais fácil de lidar com a persistência de dados e a testabilidade.

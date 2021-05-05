import 'package:flutter/material.dart';
import 'package:fountain/fountain.dart';
import 'package:fountain/middlewares.dart';

void main() {
  runApp(MyApp());
}

class CounterState {
  factory CounterState.initial() => const CounterState(0);
  const CounterState(this.count);
  final int count;
}

class AddAction extends ApplicationAction<CounterState> {
  const AddAction(this.value);

  final int value;

  @override
  Stream<ApplicationStateUpdater<CounterState>> call(
    ApplicationContext<CounterState> context,
  ) async* {
    yield (state) => CounterState(state.count + value);
  }
}

class ResetAction extends ApplicationAction<CounterState> {
  const ResetAction();

  @override
  Stream<ApplicationStateUpdater<CounterState>> call(
    ApplicationContext<CounterState> context,
  ) async* {
    yield (state) => CounterState.initial();
  }
}

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
                /// This widget will be rebuilt each time the count value changes
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
      floatingActionButton: FloatingActionButton(
        /// The action is executed in the [ApplicationContext].
        onPressed: () => context.dispatch<CounterState>(const AddAction(1)),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

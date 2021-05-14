import 'package:flutter/material.dart';
import 'package:fountain/fountain.dart';

import 'state.dart';

void main() {
  runApp(MyApp());
}

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

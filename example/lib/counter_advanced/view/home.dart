import 'package:example/counter_advanced/state/actions.dart';
import 'package:example/counter_advanced/state/state.dart';
import 'package:flutter/material.dart';
import 'package:fountain/fountain.dart';

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
      floatingActionButton: Builder(
        builder: (context) {
          final isMax = context.select((CounterState state) => state.isMax);
          if (isMax) {
            return FloatingActionButton(
              /// The action is executed in the [ApplicationContext].
              onPressed: () => context.dispatch<CounterState>(resetAction),
              tooltip: 'Reset',
              child: Icon(Icons.delete),
            );
          }

          return FloatingActionButton(
            /// The action is executed in the [ApplicationContext].
            onPressed: () => context.dispatch<CounterState>(const AddAction(1)),
            tooltip: 'Increment',
            child: Icon(Icons.add),
          );
        },
      ),
    );
  }
}

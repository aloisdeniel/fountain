import 'package:flutter/material.dart';
import 'package:fountain/fountain.dart';
import 'package:fountain/middlewares.dart';
import 'package:logging/logging.dart';

import 'middlewares/analytics_middleware.dart';
import 'middlewares/mock_middleware.dart';
import 'state/state.dart';
import 'state/storage.dart';
import 'view/home.dart';

void main() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((record) {
    print('${record.message}');
  });

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ApplicationProvider(
      initialState: (context) => CounterState.initial(),
      middlewares: <ApplicationMiddleware<CounterState>>[
        ApplicationLogger<CounterState>(),
        Analytics(),
        Mocking(),
        Persistence(
          storage: CounterStateStorage(),
        ),
        ...ApplicationProvider.defaultMiddlewares<CounterState>(),
      ],
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

import 'package:example/documents/services/api.dart';
import 'package:example/documents/services/web/api.dart';
import 'package:flutter/material.dart';
import 'package:fountain/fountain.dart';
import 'package:fountain/middlewares.dart';
import 'package:logging/logging.dart';

import 'services/mock/api.dart';
import 'state/environment/state.dart';
import 'state/state.dart';

void main() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((record) {
    print('${record.message}');
  });

  runApp(MyApp());
}

Service<ApplicationState, TService> environmentService<TService>({
  required TService mock(ApplicationInitializedState state),
  required TService production(ApplicationInitializedState state),
}) =>
    Service<ApplicationState, TService>(
      builder: (context) => context.state.maybeMap(
        orElse: () => throw Exception(
            'Application must be initialized before using services'),
        initialized: (initialized) {
          switch (initialized.environment.environment) {
            case Environment.mock:
              return mock(initialized.initialized);
            case Environment.production:
              return production(initialized.initialized);
          }
        },
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Fountain(
      initialState: (context) => ApplicationState.notInitialized(),
      services: [
        environmentService<AuthenticationApi>(
          mock: (context) => AuthenticationMockApi(),
          production: (context) => AuthenticationWebApi(),
        ),
        environmentService<DocumentsApi>(
          mock: (state) => DocumentsMockApi(
            token: state.tryGetToken(),
          ),
          production: (state) => DocumentsWebApi(
            token: state.tryGetToken(),
          ),
        ),
      ],
      middlewares: [
        Logging<ApplicationState>(),
        ...Fountain.defaultMiddlewares<ApplicationState>(),
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SizedBox(),
      ),
    );
  }
}

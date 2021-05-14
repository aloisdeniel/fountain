import 'package:example/documents/services/api.dart';
import 'package:example/documents/state/documents/state.dart';
import 'package:example/documents/state/state.dart';
import 'package:fountain/fountain.dart';
import 'package:fountain/middlewares.dart';

class CloseDocumentsAction extends Action<ApplicationInitializedState> {
  const CloseDocumentsAction();

  @override
  Stream<Updater<ApplicationInitializedState>> call(
    Context<ApplicationInitializedState> context,
  ) {
    return context.state.maybeMap(
      authenticated: (authenticated) => authenticated.documents.maybeMap(
        loading: (loading) => throwNotExecutable(),
        orElse: () async* {
          final service = context.services.create<DocumentsApi>();
          yield (state) => authenticated.copyWith(
                documents: DocumentsState.loading(),
              );
          try {
            final documents = await service.getDocuments();
            yield (state) => authenticated.copyWith(
                  documents: DocumentsState.loaded(documents: documents),
                );
          } catch (e) {
            yield (state) => authenticated.copyWith(
                  documents: DocumentsState.failed(
                    DocumentsLoadFailedReason.requestError,
                  ),
                );
          }
        },
      ),
      orElse: () => throwNotExecutable(),
    );
  }

  @override
  bool canExecute(ApplicationInitializedState state) {
    return state.map(
      notAuthenticated: (notAuthenticated) => false,
      authenticated: (authenticated) => true,
    );
  }

  @override
  String toString() => 'RefreshDocuments';
}

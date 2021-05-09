import 'package:example/documents/services/api.dart';
import 'package:example/documents/state/document/state.dart';
import 'package:example/documents/state/documents/actions/refresh.dart';
import 'package:example/documents/state/state.dart';
import 'package:fountain/fountain.dart';
import 'package:fountain/middlewares.dart';

/// Downloads documents from the server.
class OpenDocumentsAction
    extends ApplicationAction<ApplicationInitializedStateAuthenticated> {
  const OpenDocumentsAction(this.id);

  final String id;

  @override
  Stream<ApplicationStateUpdater<ApplicationInitializedStateAuthenticated>>
      call(
    ApplicationContext<ApplicationInitializedStateAuthenticated> context,
  ) async* {
    // If thee list of documents has not been loaded yet, we will first load
    // it.
    if (!context.state.documents.isLoaded) {
      yield (state) => state.copyWith(
            openedDocument: DocumentState.opening(),
          );
    }

    // If an update of documents is currently running we wait for it to
    // finish.
    if (!context.state.documents.isLoading) {
      await context.until((state) => state.documents.isLoaded);
    } else {
      // We refresh the list if the documents aren't loaded yet or if the
      // documents is not present in the list.
      final shouldRefresh = context.state.documents.maybeMap(
        notLoaded: (x) => true,
        failed: (x) => true,
        loaded: (x) => !x.documents.any((document) => document.id != id),
        orElse: () => false,
      );
      if (shouldRefresh) {
        await context.dispatch(RefreshDocumentsAction());
      }
    }

    yield (state) => state.copyWith(
          openedDocument: state.documents.maybeMap(
            loaded: (loaded) {
              final document = loaded.documents.cast<Document?>().firstWhere(
                    (document) => document!.id == id,
                    orElse: () => null,
                  );
              if (document != null) {
                return DocumentState.opened(
                  document: document,
                );
              }

              return DocumentState.failed(
                reason: DocumentStateFailedReason.documentNotFound,
              );
            },
            orElse: () => DocumentState.failed(
              reason: DocumentStateFailedReason.requestError,
            ),
          ),
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

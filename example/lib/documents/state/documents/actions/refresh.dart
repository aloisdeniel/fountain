import 'package:example/documents/services/api.dart';
import 'package:example/documents/state/documents/state.dart';
import 'package:example/documents/state/state.dart';
import 'package:fountain/fountain.dart';
import 'package:fountain/middlewares.dart';

/// Downloads documents from the server.
class RefreshDocumentsAction
    extends ApplicationAction<ApplicationInitializedStateAuthenticated> {
  const RefreshDocumentsAction();

  @override
  Stream<ApplicationStateUpdater<ApplicationInitializedStateAuthenticated>>
      call(
    ApplicationContext<ApplicationInitializedStateAuthenticated> context,
  ) {
    return context.state.documents.maybeMap(
      loading: (loading) => throwNotExecutable(),
      orElse: () async* {
        final service = context.services.create<DocumentsApi>();
        yield (state) => state.copyWith(
              documents: DocumentsState.loading(),
            );
        try {
          final documents = await service.getDocuments();
          yield (state) => state.copyWith(
                documents: DocumentsState.loaded(documents: documents),
              );
        } catch (e) {
          yield (state) => state.copyWith(
                documents: DocumentsState.failed(
                  DocumentsLoadFailedReason.requestError,
                ),
              );
        }
      },
    );
  }

  @override
  bool canExecute(ApplicationInitializedStateAuthenticated state) {
    return state.documents.maybeMap(
      loading: (loading) => false,
      orElse: () => true,
    );
  }

  @override
  String toString() => 'RefreshDocuments';
}

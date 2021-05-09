import 'package:example/documents/services/api.dart';

class AuthenticationMockApi extends AuthenticationApi {
  @override
  Future<AuthenticationResult> login(String username, String password) {
    throw UnimplementedError();
  }

  @override
  Future<void> logout(JwtToken token) {
    throw UnimplementedError();
  }

  @override
  Future<AuthenticationResult> refresh(String refreshToken) {
    throw UnimplementedError();
  }
}

class DocumentsMockApi extends DocumentsApi {
  const DocumentsMockApi({
    required this.token,
  });
  final JwtToken token;
  @override
  Future<List<Document>> getDocuments() {
    throw UnimplementedError();
  }
}

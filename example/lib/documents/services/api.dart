import 'package:jwt_decode/jwt_decode.dart';

abstract class AuthenticationApi {
  const AuthenticationApi();
  Future<AuthenticationResult> login(String username, String password);
  Future<void> logout(JwtToken token);
  Future<AuthenticationResult> refresh(String refreshToken);
}

class AuthenticationResult {
  const AuthenticationResult({
    required this.token,
    required this.refreshToken,
  });
  final JwtToken token;
  final String refreshToken;
}

class JwtToken {
  JwtToken.decode(this.value) : this.payload = Jwt.parseJwt(value);
  final String value;
  final Map<String, dynamic> payload;
}

extension JwtNullableExtensions on String? {
  JwtToken? decodeJwt() {
    final self = this;
    if (self == null) {
      return null;
    }
    return self.decodeJwt();
  }
}

abstract class DocumentsApi {
  const DocumentsApi();
  Future<List<Document>> getDocuments();
}

class Document {
  const Document({
    required this.id,
    required this.date,
    required this.name,
    required this.content,
  });
  final String id;
  final DateTime date;
  final String name;
  final String content;
}

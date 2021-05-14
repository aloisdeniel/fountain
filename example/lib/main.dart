import 'counter_basic/main.dart' as counter_basic;
import 'counter_advanced/main.dart' as counter_advanced;
import 'documents/main.dart' as documents;

void main() {
  final exampleMain = () {
    switch (const String.fromEnvironment('APP')) {
      case 'counter_advanced':
        return counter_advanced.main;
      case 'documents':
        return documents.main;
      default:
        return counter_basic.main;
    }
  }();

  // Default example is counter.
  exampleMain.call();
}

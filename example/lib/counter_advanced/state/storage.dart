import 'dart:convert';
import 'dart:io';

import 'package:example/counter_advanced/state/state.dart';
import 'package:fountain/middlewares.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class CounterStateStorage extends Storage<CounterState> {
  Future<File> getFile() async {
    final documents = await getApplicationDocumentsDirectory();
    return File(join(documents.path, 'cache'));
  }

  @override
  Future<CounterState?> load() async {
    final file = await getFile();
    if (file.existsSync()) {
      final content = await file.readAsString();
      final json = jsonDecode(content);
      return CounterState(json['count'], json['max']);
    }
    return null;
  }

  @override
  Future<void> save(CounterState state) async {
    final file = await getFile();
    final json = jsonEncode({
      'count': state.count,
      'max': state.max,
    });
    await file.writeAsString(json);
  }
}

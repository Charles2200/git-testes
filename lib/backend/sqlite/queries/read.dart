import '/backend/sqlite/queries/sqlite_row.dart';
import 'package:sqflite/sqflite.dart';

Future<List<T>> _readQuery<T>(
  Database database,
  String query,
  T Function(Map<String, dynamic>) create,
) =>
    database.rawQuery(query).then((r) => r.map((e) => create(e)).toList());

/// BEGIN LER
Future<List<LerRow>> performLer(
  Database database,
) {
  final query = '''
SELECT * FROM NomeDaTabela;

''';
  return _readQuery(database, query, (d) => LerRow(d));
}

class LerRow extends SqliteRow {
  LerRow(Map<String, dynamic> data) : super(data);

  String get retorno => data['retorno'] as String;
}

/// END LER

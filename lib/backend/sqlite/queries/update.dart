import 'package:sqflite/sqflite.dart';

/// BEGIN PRODUTOS
Future performProdutos(
  Database database,
) {
  final query = '''
CREATE TABLE NomeDaTabela (
    id INTEGER PRIMARY KEY,
    nome TEXT,
    idade INTEGER,
    email TEXT UNIQUE,
    data_criacao DATE DEFAULT CURRENT_DATE
);

''';
  return database.rawQuery(query);
}

/// END PRODUTOS

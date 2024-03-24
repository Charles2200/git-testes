// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/sqlite/sqlite_manager.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<int> regexDeixaApenasNumeros(String dado) async {
  // crie uma função onde recebe uma string, remova todos caracteres que não sejam número
// Utilizando expressão regular para remover todos os caracteres que não são números
  final regex = RegExp(r'\D+');
  final numeros = dado.replaceAll(regex, '');

  // Convertendo a string de números para um inteiro
  final resultado = int.tryParse(numeros);

  // Retornando o resultado
  return Future.value(resultado);
}

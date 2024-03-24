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

import 'package:get_it/get_it.dart';

// Set your action name, define your arguments and return parameter,

Future newCustomAction2() async {
  GetIt getIt = GetIt.instance;
  var respostory = getIt<INoteRepository>();

  //respostory.verificaSaldo();
}
// and then add the boilerplate code using the button on the right!

abstract class INoteRepository {
  Stream<List<String>> notes(
    int? userId,
    String cacheKey,
    String? code, {
    bool? onlyCache,
  });

  double verificaSaldo(saldoAtual);

  Future<String> save(String note, String cacheKey);

  Future<List<String>> syncNotes(
    String note,
    int? userId,
    String? code,
    String cacheKey,
  );
}

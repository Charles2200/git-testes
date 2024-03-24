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

import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future newCustomAction() async {
  // change primary color at app level
// This function will change the primary color of the app
  SharedPreferences prefs = await SharedPreferences.getInstance();
  // Get the current primary color from shared preferences
  Color currentColor = Color(prefs.getInt('primaryColor') ??
      const Color.fromARGB(255, 243, 33, 236).value);
}

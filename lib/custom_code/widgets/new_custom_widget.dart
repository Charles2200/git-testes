// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/sqlite/sqlite_manager.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class AppState {
  String valor = 'teste';
}

class NewCustomWidget extends StatefulWidget {
  const NewCustomWidget({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _NewCustomWidgetState createState() => _NewCustomWidgetState();
}

class _NewCustomWidgetState extends State<NewCustomWidget> {
  final AppState appState = AppState(); // Instância do AppState

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: TextField(
        decoration: InputDecoration(
          labelText: 'Digite algo',
          hintText: 'Digite aqui',
          prefixIcon: Icon(Icons.text_fields),
          border: OutlineInputBorder(),
        ),
        onChanged: (value) {
          setState(() {
            appState.valor =
                value; // Atualiza o valor do AppState com o valor digitado
          });
        },
      ),
    );
  }
}

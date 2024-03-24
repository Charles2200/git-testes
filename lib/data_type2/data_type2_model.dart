import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'data_type2_widget.dart' show DataType2Widget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DataType2Model extends FlutterFlowModel<DataType2Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for input_nome widget.
  FocusNode? inputNomeFocusNode1;
  TextEditingController? inputNomeController1;
  String? Function(BuildContext, String?)? inputNomeController1Validator;
  // State field(s) for input_nome widget.
  FocusNode? inputNomeFocusNode2;
  TextEditingController? inputNomeController2;
  String? Function(BuildContext, String?)? inputNomeController2Validator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    inputNomeFocusNode1?.dispose();
    inputNomeController1?.dispose();

    inputNomeFocusNode2?.dispose();
    inputNomeController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

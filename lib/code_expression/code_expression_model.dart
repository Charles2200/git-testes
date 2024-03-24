import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'code_expression_widget.dart' show CodeExpressionWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CodeExpressionModel extends FlutterFlowModel<CodeExpressionWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for input_1 widget.
  FocusNode? input1FocusNode;
  TextEditingController? input1Controller;
  String? Function(BuildContext, String?)? input1ControllerValidator;
  // State field(s) for input_2 widget.
  FocusNode? input2FocusNode;
  TextEditingController? input2Controller;
  String? Function(BuildContext, String?)? input2ControllerValidator;
  // State field(s) for input_resultado widget.
  FocusNode? inputResultadoFocusNode;
  TextEditingController? inputResultadoController;
  String? Function(BuildContext, String?)? inputResultadoControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    input1FocusNode?.dispose();
    input1Controller?.dispose();

    input2FocusNode?.dispose();
    input2Controller?.dispose();

    inputResultadoFocusNode?.dispose();
    inputResultadoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

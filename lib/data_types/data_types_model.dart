import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'data_types_widget.dart' show DataTypesWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DataTypesModel extends FlutterFlowModel<DataTypesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for input_modelo widget.
  FocusNode? inputModeloFocusNode1;
  TextEditingController? inputModeloController1;
  String? Function(BuildContext, String?)? inputModeloController1Validator;
  // State field(s) for input_modelo widget.
  FocusNode? inputModeloFocusNode2;
  TextEditingController? inputModeloController2;
  String? Function(BuildContext, String?)? inputModeloController2Validator;
  // State field(s) for input_modelo widget.
  FocusNode? inputModeloFocusNode3;
  TextEditingController? inputModeloController3;
  String? Function(BuildContext, String?)? inputModeloController3Validator;
  // State field(s) for input_modelo widget.
  FocusNode? inputModeloFocusNode4;
  TextEditingController? inputModeloController4;
  String? Function(BuildContext, String?)? inputModeloController4Validator;
  // State field(s) for input_CriarCarros widget.
  FocusNode? inputCriarCarrosFocusNode;
  TextEditingController? inputCriarCarrosController;
  String? Function(BuildContext, String?)? inputCriarCarrosControllerValidator;
  // State field(s) for input_modeloCriar widget.
  FocusNode? inputModeloCriarFocusNode;
  TextEditingController? inputModeloCriarController;
  String? Function(BuildContext, String?)? inputModeloCriarControllerValidator;
  // State field(s) for input_CriarAno widget.
  FocusNode? inputCriarAnoFocusNode;
  TextEditingController? inputCriarAnoController;
  String? Function(BuildContext, String?)? inputCriarAnoControllerValidator;
  // State field(s) for input_CriarValor widget.
  FocusNode? inputCriarValorFocusNode;
  TextEditingController? inputCriarValorController;
  String? Function(BuildContext, String?)? inputCriarValorControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    inputModeloFocusNode1?.dispose();
    inputModeloController1?.dispose();

    inputModeloFocusNode2?.dispose();
    inputModeloController2?.dispose();

    inputModeloFocusNode3?.dispose();
    inputModeloController3?.dispose();

    inputModeloFocusNode4?.dispose();
    inputModeloController4?.dispose();

    inputCriarCarrosFocusNode?.dispose();
    inputCriarCarrosController?.dispose();

    inputModeloCriarFocusNode?.dispose();
    inputModeloCriarController?.dispose();

    inputCriarAnoFocusNode?.dispose();
    inputCriarAnoController?.dispose();

    inputCriarValorFocusNode?.dispose();
    inputCriarValorController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

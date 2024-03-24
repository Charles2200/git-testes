import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'teste_automatizado_widget.dart' show TesteAutomatizadoWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TesteAutomatizadoModel extends FlutterFlowModel<TesteAutomatizadoWidget> {
  ///  Local state fields for this page.

  List<String> list = [];
  void addToList(String item) => list.add(item);
  void removeFromList(String item) => list.remove(item);
  void removeAtIndexFromList(int index) => list.removeAt(index);
  void insertAtIndexInList(int index, String item) => list.insert(index, item);
  void updateListAtIndex(int index, Function(String) updateFn) =>
      list[index] = updateFn(list[index]);

  List<int> listNumber = [];
  void addToListNumber(int item) => listNumber.add(item);
  void removeFromListNumber(int item) => listNumber.remove(item);
  void removeAtIndexFromListNumber(int index) => listNumber.removeAt(index);
  void insertAtIndexInListNumber(int index, int item) =>
      listNumber.insert(index, item);
  void updateListNumberAtIndex(int index, Function(int) updateFn) =>
      listNumber[index] = updateFn(listNumber[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

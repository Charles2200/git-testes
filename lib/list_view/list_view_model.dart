import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'list_view_widget.dart' show ListViewWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ListViewModel extends FlutterFlowModel<ListViewWidget> {
  ///  Local state fields for this page.

  List<dynamic> listaObjeto01 = [];
  void addToListaObjeto01(dynamic item) => listaObjeto01.add(item);
  void removeFromListaObjeto01(dynamic item) => listaObjeto01.remove(item);
  void removeAtIndexFromListaObjeto01(int index) =>
      listaObjeto01.removeAt(index);
  void insertAtIndexInListaObjeto01(int index, dynamic item) =>
      listaObjeto01.insert(index, item);
  void updateListaObjeto01AtIndex(int index, Function(dynamic) updateFn) =>
      listaObjeto01[index] = updateFn(listaObjeto01[index]);

  List<dynamic> listaObjeto02 = [];
  void addToListaObjeto02(dynamic item) => listaObjeto02.add(item);
  void removeFromListaObjeto02(dynamic item) => listaObjeto02.remove(item);
  void removeAtIndexFromListaObjeto02(int index) =>
      listaObjeto02.removeAt(index);
  void insertAtIndexInListaObjeto02(int index, dynamic item) =>
      listaObjeto02.insert(index, item);
  void updateListaObjeto02AtIndex(int index, Function(dynamic) updateFn) =>
      listaObjeto02[index] = updateFn(listaObjeto02[index]);

  List<dynamic> listView = [];
  void addToListView(dynamic item) => listView.add(item);
  void removeFromListView(dynamic item) => listView.remove(item);
  void removeAtIndexFromListView(int index) => listView.removeAt(index);
  void insertAtIndexInListView(int index, dynamic item) =>
      listView.insert(index, item);
  void updateListViewAtIndex(int index, Function(dynamic) updateFn) =>
      listView[index] = updateFn(listView[index]);

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
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;

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

  String? get radioButtonValue => radioButtonValueController?.value;
}

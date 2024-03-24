import '/components/nav_bar_with_middle_button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
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
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
  // Model for NavBarWithMiddleButton component.
  late NavBarWithMiddleButtonModel navBarWithMiddleButtonModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    navBarWithMiddleButtonModel =
        createModel(context, () => NavBarWithMiddleButtonModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    inputModeloFocusNode1?.dispose();
    inputModeloController1?.dispose();

    inputModeloFocusNode2?.dispose();
    inputModeloController2?.dispose();

    navBarWithMiddleButtonModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

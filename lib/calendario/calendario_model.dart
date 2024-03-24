import '/components/taks_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'calendario_widget.dart' show CalendarioWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CalendarioModel extends FlutterFlowModel<CalendarioWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;
  // Model for taks component.
  late TaksModel taksModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    taksModel = createModel(context, () => TaksModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    taksModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

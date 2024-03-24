import '/components/taks_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'calendario_model.dart';
export 'calendario_model.dart';

class CalendarioWidget extends StatefulWidget {
  const CalendarioWidget({super.key});

  @override
  State<CalendarioWidget> createState() => _CalendarioWidgetState();
}

class _CalendarioWidgetState extends State<CalendarioWidget> {
  late CalendarioModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CalendarioModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3.0,
                        color: Color(0x33000000),
                        offset: Offset(0.0, 1.0),
                      )
                    ],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8.0),
                      bottomRight: Radius.circular(8.0),
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0),
                    ),
                  ),
                  child: FlutterFlowCalendar(
                    color: FlutterFlowTheme.of(context).primary,
                    iconColor: FlutterFlowTheme.of(context).secondaryText,
                    weekFormat: false,
                    weekStartsMonday: false,
                    twoRowHeader: true,
                    initialDate: getCurrentTimestamp,
                    rowHeight: 64.0,
                    onChange: (DateTimeRange? newSelectedDate) {
                      setState(
                          () => _model.calendarSelectedDay = newSelectedDate);
                    },
                    titleStyle: FlutterFlowTheme.of(context).headlineSmall,
                    dayOfWeekStyle: FlutterFlowTheme.of(context).labelLarge,
                    dateStyle: FlutterFlowTheme.of(context).bodyMedium,
                    selectedDateStyle: FlutterFlowTheme.of(context).titleSmall,
                    inactiveDateStyle: FlutterFlowTheme.of(context).labelMedium,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                  child: wrapWithModel(
                    model: _model.taksModel,
                    updateCallback: () => setState(() {}),
                    child: TaksWidget(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

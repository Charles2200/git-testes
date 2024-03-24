import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'multi_drop_dow_model.dart';
export 'multi_drop_dow_model.dart';

class MultiDropDowWidget extends StatefulWidget {
  const MultiDropDowWidget({super.key});

  @override
  State<MultiDropDowWidget> createState() => _MultiDropDowWidgetState();
}

class _MultiDropDowWidgetState extends State<MultiDropDowWidget> {
  late MultiDropDowModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MultiDropDowModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.all(30.0),
                child: Builder(
                  builder: (context) {
                    final multiDropDow = FFAppState().multiDropDow.toList();
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: multiDropDow.length,
                      itemBuilder: (context, multiDropDowIndex) {
                        final multiDropDowItem =
                            multiDropDow[multiDropDowIndex];
                        return Padding(
                          padding: EdgeInsets.all(15.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              setState(() {
                                FFAppState().addToSelecionado(multiDropDowItem);
                              });
                              setState(() {
                                FFAppState().removeAtIndexFromMultiDropDow(
                                    multiDropDowIndex);
                              });
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  multiDropDowItem.nome,
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(30.0),
                child: Builder(
                  builder: (context) {
                    final selecionado = FFAppState().selecionado.toList();
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: selecionado.length,
                      itemBuilder: (context, selecionadoIndex) {
                        final selecionadoItem = selecionado[selecionadoIndex];
                        return Padding(
                          padding: EdgeInsets.all(15.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              setState(() {
                                FFAppState().addToSelecionado(selecionadoItem);
                              });
                              setState(() {
                                FFAppState().removeAtIndexFromMultiDropDow(
                                    selecionadoIndex);
                              });
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  selecionadoItem.nome,
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

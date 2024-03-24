import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'data_table_model.dart';
export 'data_table_model.dart';

class DataTableWidget extends StatefulWidget {
  const DataTableWidget({super.key});

  @override
  State<DataTableWidget> createState() => _DataTableWidgetState();
}

class _DataTableWidgetState extends State<DataTableWidget> {
  late DataTableModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DataTableModel());

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
              Expanded(
                child: Builder(
                  builder: (context) {
                    final pd = FFAppState().Produtos.toList();
                    return FlutterFlowDataTable<ProdutosStruct>(
                      controller: _model.paginatedDataTableController,
                      data: pd,
                      columnsBuilder: (onSortChanged) => [
                        DataColumn2(
                          label: DefaultTextStyle.merge(
                            softWrap: true,
                            child: Text(
                              'Nome',
                              style: FlutterFlowTheme.of(context).labelLarge,
                            ),
                          ),
                        ),
                        DataColumn2(
                          label: DefaultTextStyle.merge(
                            softWrap: true,
                            child: Text(
                              'Edit Header 2',
                              style: FlutterFlowTheme.of(context).labelLarge,
                            ),
                          ),
                        ),
                      ],
                      dataRowBuilder:
                          (pdItem, pdIndex, selected, onSelectChanged) =>
                              DataRow(
                        color: MaterialStateProperty.all(
                          pdIndex % 2 == 0
                              ? FlutterFlowTheme.of(context).secondaryBackground
                              : FlutterFlowTheme.of(context).primaryBackground,
                        ),
                        cells: [
                          Container(
                            height: 200.0,
                            decoration: BoxDecoration(),
                            child: ListView(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                Builder(
                                  builder: (context) {
                                    final pd02 = FFAppState().Produtos.toList();
                                    return SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: List.generate(pd02.length,
                                            (pd02Index) {
                                          final pd02Item = pd02[pd02Index];
                                          return Text(
                                            pd02Item.nome,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                          );
                                        }),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          Text(
                            pdItem.nome,
                            style: FlutterFlowTheme.of(context).bodyMedium,
                          ),
                        ].map((c) => DataCell(c)).toList(),
                      ),
                      paginated: true,
                      selectable: false,
                      hidePaginator: false,
                      showFirstLastButtons: false,
                      width: double.infinity,
                      height: 70.0,
                      headingRowHeight: 50.0,
                      dataRowHeight: 48.0,
                      columnSpacing: 20.0,
                      headingRowColor: FlutterFlowTheme.of(context).primary,
                      borderRadius: BorderRadius.circular(8.0),
                      addHorizontalDivider: true,
                      addTopAndBottomDivider: false,
                      hideDefaultHorizontalDivider: false,
                      horizontalDividerColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      horizontalDividerThickness: 1.0,
                      addVerticalDivider: true,
                      verticalDividerColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      verticalDividerThickness: 1.0,
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

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'chart_widget.dart' show ChartWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChartModel extends FlutterFlowModel<ChartWidget> {
  ///  Local state fields for this page.

  List<String> label = ['item 1', 'item 2'];
  void addToLabel(String item) => label.add(item);
  void removeFromLabel(String item) => label.remove(item);
  void removeAtIndexFromLabel(int index) => label.removeAt(index);
  void insertAtIndexInLabel(int index, String item) =>
      label.insert(index, item);
  void updateLabelAtIndex(int index, Function(String) updateFn) =>
      label[index] = updateFn(label[index]);

  List<double> number = [1.0, 2.0, 36.0];
  void addToNumber(double item) => number.add(item);
  void removeFromNumber(double item) => number.remove(item);
  void removeAtIndexFromNumber(int index) => number.removeAt(index);
  void insertAtIndexInNumber(int index, double item) =>
      number.insert(index, item);
  void updateNumberAtIndex(int index, Function(double) updateFn) =>
      number[index] = updateFn(number[index]);

  List<int> nunber2 = [23, 34];
  void addToNunber2(int item) => nunber2.add(item);
  void removeFromNunber2(int item) => nunber2.remove(item);
  void removeAtIndexFromNunber2(int index) => nunber2.removeAt(index);
  void insertAtIndexInNunber2(int index, int item) =>
      nunber2.insert(index, item);
  void updateNunber2AtIndex(int index, Function(int) updateFn) =>
      nunber2[index] = updateFn(nunber2[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

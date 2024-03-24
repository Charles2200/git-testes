// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SelecionadosStruct extends BaseStruct {
  SelecionadosStruct({
    MultiDropDowStruct? selecionado,
  }) : _selecionado = selecionado;

  // "selecionado" field.
  MultiDropDowStruct? _selecionado;
  MultiDropDowStruct get selecionado => _selecionado ?? MultiDropDowStruct();
  set selecionado(MultiDropDowStruct? val) => _selecionado = val;
  void updateSelecionado(Function(MultiDropDowStruct) updateFn) =>
      updateFn(_selecionado ??= MultiDropDowStruct());
  bool hasSelecionado() => _selecionado != null;

  static SelecionadosStruct fromMap(Map<String, dynamic> data) =>
      SelecionadosStruct(
        selecionado: MultiDropDowStruct.maybeFromMap(data['selecionado']),
      );

  static SelecionadosStruct? maybeFromMap(dynamic data) => data is Map
      ? SelecionadosStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'selecionado': _selecionado?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'selecionado': serializeParam(
          _selecionado,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static SelecionadosStruct fromSerializableMap(Map<String, dynamic> data) =>
      SelecionadosStruct(
        selecionado: deserializeStructParam(
          data['selecionado'],
          ParamType.DataStruct,
          false,
          structBuilder: MultiDropDowStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'SelecionadosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SelecionadosStruct && selecionado == other.selecionado;
  }

  @override
  int get hashCode => const ListEquality().hash([selecionado]);
}

SelecionadosStruct createSelecionadosStruct({
  MultiDropDowStruct? selecionado,
}) =>
    SelecionadosStruct(
      selecionado: selecionado ?? MultiDropDowStruct(),
    );

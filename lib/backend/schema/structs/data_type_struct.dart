// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DataTypeStruct extends BaseStruct {
  DataTypeStruct({
    String? nome,
    String? numero,
  })  : _nome = nome,
        _numero = numero;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;
  bool hasNome() => _nome != null;

  // "numero" field.
  String? _numero;
  String get numero => _numero ?? '';
  set numero(String? val) => _numero = val;
  bool hasNumero() => _numero != null;

  static DataTypeStruct fromMap(Map<String, dynamic> data) => DataTypeStruct(
        nome: data['nome'] as String?,
        numero: data['numero'] as String?,
      );

  static DataTypeStruct? maybeFromMap(dynamic data) =>
      data is Map ? DataTypeStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'nome': _nome,
        'numero': _numero,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'numero': serializeParam(
          _numero,
          ParamType.String,
        ),
      }.withoutNulls;

  static DataTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      DataTypeStruct(
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        numero: deserializeParam(
          data['numero'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DataTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DataTypeStruct &&
        nome == other.nome &&
        numero == other.numero;
  }

  @override
  int get hashCode => const ListEquality().hash([nome, numero]);
}

DataTypeStruct createDataTypeStruct({
  String? nome,
  String? numero,
}) =>
    DataTypeStruct(
      nome: nome,
      numero: numero,
    );

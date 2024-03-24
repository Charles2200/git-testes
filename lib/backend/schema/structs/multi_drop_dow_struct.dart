// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MultiDropDowStruct extends BaseStruct {
  MultiDropDowStruct({
    String? nome,
    String? id,
  })  : _nome = nome,
        _id = id;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;
  bool hasNome() => _nome != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  static MultiDropDowStruct fromMap(Map<String, dynamic> data) =>
      MultiDropDowStruct(
        nome: data['nome'] as String?,
        id: data['id'] as String?,
      );

  static MultiDropDowStruct? maybeFromMap(dynamic data) => data is Map
      ? MultiDropDowStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'nome': _nome,
        'id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
      }.withoutNulls;

  static MultiDropDowStruct fromSerializableMap(Map<String, dynamic> data) =>
      MultiDropDowStruct(
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'MultiDropDowStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MultiDropDowStruct && nome == other.nome && id == other.id;
  }

  @override
  int get hashCode => const ListEquality().hash([nome, id]);
}

MultiDropDowStruct createMultiDropDowStruct({
  String? nome,
  String? id,
}) =>
    MultiDropDowStruct(
      nome: nome,
      id: id,
    );

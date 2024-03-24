// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CarrosStruct extends BaseStruct {
  CarrosStruct({
    String? nome,
    String? modelo,
    DateTime? ano,
    double? valor,
  })  : _nome = nome,
        _modelo = modelo,
        _ano = ano,
        _valor = valor;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;
  bool hasNome() => _nome != null;

  // "modelo" field.
  String? _modelo;
  String get modelo => _modelo ?? '';
  set modelo(String? val) => _modelo = val;
  bool hasModelo() => _modelo != null;

  // "ano" field.
  DateTime? _ano;
  DateTime? get ano => _ano;
  set ano(DateTime? val) => _ano = val;
  bool hasAno() => _ano != null;

  // "valor" field.
  double? _valor;
  double get valor => _valor ?? 0.0;
  set valor(double? val) => _valor = val;
  void incrementValor(double amount) => _valor = valor + amount;
  bool hasValor() => _valor != null;

  static CarrosStruct fromMap(Map<String, dynamic> data) => CarrosStruct(
        nome: data['nome'] as String?,
        modelo: data['modelo'] as String?,
        ano: data['ano'] as DateTime?,
        valor: castToType<double>(data['valor']),
      );

  static CarrosStruct? maybeFromMap(dynamic data) =>
      data is Map ? CarrosStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'nome': _nome,
        'modelo': _modelo,
        'ano': _ano,
        'valor': _valor,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'modelo': serializeParam(
          _modelo,
          ParamType.String,
        ),
        'ano': serializeParam(
          _ano,
          ParamType.DateTime,
        ),
        'valor': serializeParam(
          _valor,
          ParamType.double,
        ),
      }.withoutNulls;

  static CarrosStruct fromSerializableMap(Map<String, dynamic> data) =>
      CarrosStruct(
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        modelo: deserializeParam(
          data['modelo'],
          ParamType.String,
          false,
        ),
        ano: deserializeParam(
          data['ano'],
          ParamType.DateTime,
          false,
        ),
        valor: deserializeParam(
          data['valor'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'CarrosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CarrosStruct &&
        nome == other.nome &&
        modelo == other.modelo &&
        ano == other.ano &&
        valor == other.valor;
  }

  @override
  int get hashCode => const ListEquality().hash([nome, modelo, ano, valor]);
}

CarrosStruct createCarrosStruct({
  String? nome,
  String? modelo,
  DateTime? ano,
  double? valor,
}) =>
    CarrosStruct(
      nome: nome,
      modelo: modelo,
      ano: ano,
      valor: valor,
    );

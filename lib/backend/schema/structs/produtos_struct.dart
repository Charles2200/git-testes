// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProdutosStruct extends BaseStruct {
  ProdutosStruct({
    String? nome,
    int? quantidade,
    bool? estacionamento,
    int? idade,
  })  : _nome = nome,
        _quantidade = quantidade,
        _estacionamento = estacionamento,
        _idade = idade;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;
  bool hasNome() => _nome != null;

  // "quantidade" field.
  int? _quantidade;
  int get quantidade => _quantidade ?? 0;
  set quantidade(int? val) => _quantidade = val;
  void incrementQuantidade(int amount) => _quantidade = quantidade + amount;
  bool hasQuantidade() => _quantidade != null;

  // "estacionamento" field.
  bool? _estacionamento;
  bool get estacionamento => _estacionamento ?? false;
  set estacionamento(bool? val) => _estacionamento = val;
  bool hasEstacionamento() => _estacionamento != null;

  // "idade" field.
  int? _idade;
  int get idade => _idade ?? 0;
  set idade(int? val) => _idade = val;
  void incrementIdade(int amount) => _idade = idade + amount;
  bool hasIdade() => _idade != null;

  static ProdutosStruct fromMap(Map<String, dynamic> data) => ProdutosStruct(
        nome: data['nome'] as String?,
        quantidade: castToType<int>(data['quantidade']),
        estacionamento: data['estacionamento'] as bool?,
        idade: castToType<int>(data['idade']),
      );

  static ProdutosStruct? maybeFromMap(dynamic data) =>
      data is Map ? ProdutosStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'nome': _nome,
        'quantidade': _quantidade,
        'estacionamento': _estacionamento,
        'idade': _idade,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'quantidade': serializeParam(
          _quantidade,
          ParamType.int,
        ),
        'estacionamento': serializeParam(
          _estacionamento,
          ParamType.bool,
        ),
        'idade': serializeParam(
          _idade,
          ParamType.int,
        ),
      }.withoutNulls;

  static ProdutosStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProdutosStruct(
        nome: deserializeParam(
          data['nome'],
          ParamType.String,
          false,
        ),
        quantidade: deserializeParam(
          data['quantidade'],
          ParamType.int,
          false,
        ),
        estacionamento: deserializeParam(
          data['estacionamento'],
          ParamType.bool,
          false,
        ),
        idade: deserializeParam(
          data['idade'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ProdutosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProdutosStruct &&
        nome == other.nome &&
        quantidade == other.quantidade &&
        estacionamento == other.estacionamento &&
        idade == other.idade;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([nome, quantidade, estacionamento, idade]);
}

ProdutosStruct createProdutosStruct({
  String? nome,
  int? quantidade,
  bool? estacionamento,
  int? idade,
}) =>
    ProdutosStruct(
      nome: nome,
      quantidade: quantidade,
      estacionamento: estacionamento,
      idade: idade,
    );

import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import '/backend/sqlite/sqlite_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      if (prefs.containsKey('ff_carros')) {
        try {
          final serializedData = prefs.getString('ff_carros') ?? '{}';
          _carros =
              CarrosStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _carrosLista = prefs
              .getStringList('ff_carrosLista')
              ?.map((x) {
                try {
                  return CarrosStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _carrosLista;
    });
    _safeInit(() {
      _multiDropDow = prefs
              .getStringList('ff_multiDropDow')
              ?.map((x) {
                try {
                  return MultiDropDowStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _multiDropDow;
    });
    _safeInit(() {
      _selecionado = prefs
              .getStringList('ff_selecionado')
              ?.map((x) {
                try {
                  return MultiDropDowStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _selecionado;
    });
    _safeInit(() {
      _token = prefs.getString('ff_token') ?? _token;
    });
    _safeInit(() {
      _JSON = prefs.getStringList('ff_JSON')?.map((x) {
            try {
              return jsonDecode(x);
            } catch (e) {
              print("Can't decode persisted json. Error: $e.");
              return {};
            }
          }).toList() ??
          _JSON;
    });
    _safeInit(() {
      _Produtos = prefs
              .getStringList('ff_Produtos')
              ?.map((x) {
                try {
                  return ProdutosStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _Produtos;
    });
    _safeInit(() {
      _dataType = prefs
              .getStringList('ff_dataType')
              ?.map((x) {
                try {
                  return DataTypeStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _dataType;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  CarrosStruct _carros = CarrosStruct.fromSerializableMap(jsonDecode(
      '{\"nome\":\"Gol\",\"modelo\":\"g4\",\"ano\":\"1684614600000\",\"valor\":\"15000\"}'));
  CarrosStruct get carros => _carros;
  set carros(CarrosStruct _value) {
    _carros = _value;
    prefs.setString('ff_carros', _value.serialize());
  }

  void updateCarrosStruct(Function(CarrosStruct) updateFn) {
    updateFn(_carros);
    prefs.setString('ff_carros', _carros.serialize());
  }

  List<CarrosStruct> _carrosLista = [];
  List<CarrosStruct> get carrosLista => _carrosLista;
  set carrosLista(List<CarrosStruct> _value) {
    _carrosLista = _value;
    prefs.setStringList(
        'ff_carrosLista', _value.map((x) => x.serialize()).toList());
  }

  void addToCarrosLista(CarrosStruct _value) {
    _carrosLista.add(_value);
    prefs.setStringList(
        'ff_carrosLista', _carrosLista.map((x) => x.serialize()).toList());
  }

  void removeFromCarrosLista(CarrosStruct _value) {
    _carrosLista.remove(_value);
    prefs.setStringList(
        'ff_carrosLista', _carrosLista.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromCarrosLista(int _index) {
    _carrosLista.removeAt(_index);
    prefs.setStringList(
        'ff_carrosLista', _carrosLista.map((x) => x.serialize()).toList());
  }

  void updateCarrosListaAtIndex(
    int _index,
    CarrosStruct Function(CarrosStruct) updateFn,
  ) {
    _carrosLista[_index] = updateFn(_carrosLista[_index]);
    prefs.setStringList(
        'ff_carrosLista', _carrosLista.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInCarrosLista(int _index, CarrosStruct _value) {
    _carrosLista.insert(_index, _value);
    prefs.setStringList(
        'ff_carrosLista', _carrosLista.map((x) => x.serialize()).toList());
  }

  String _teste = '';
  String get teste => _teste;
  set teste(String _value) {
    _teste = _value;
  }

  List<String> _imagensAutoPlay = [
    'https://picsum.photos/seed/216/600',
    'https://picsum.photos/seed/829/600',
    'https://picsum.photos/seed/124/600'
  ];
  List<String> get imagensAutoPlay => _imagensAutoPlay;
  set imagensAutoPlay(List<String> _value) {
    _imagensAutoPlay = _value;
  }

  void addToImagensAutoPlay(String _value) {
    _imagensAutoPlay.add(_value);
  }

  void removeFromImagensAutoPlay(String _value) {
    _imagensAutoPlay.remove(_value);
  }

  void removeAtIndexFromImagensAutoPlay(int _index) {
    _imagensAutoPlay.removeAt(_index);
  }

  void updateImagensAutoPlayAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _imagensAutoPlay[_index] = updateFn(_imagensAutoPlay[_index]);
  }

  void insertAtIndexInImagensAutoPlay(int _index, String _value) {
    _imagensAutoPlay.insert(_index, _value);
  }

  List<MultiDropDowStruct> _multiDropDow = [
    MultiDropDowStruct.fromSerializableMap(
        jsonDecode('{\"nome\":\"nome 1\",\"id\":\"1\"}')),
    MultiDropDowStruct.fromSerializableMap(
        jsonDecode('{\"nome\":\"nome 2\",\"id\":\"2\"}')),
    MultiDropDowStruct.fromSerializableMap(
        jsonDecode('{\"nome\":\"Hello World\",\"id\":\"Hello World\"}')),
    MultiDropDowStruct.fromSerializableMap(
        jsonDecode('{\"nome\":\"nome 3\",\"id\":\"3\"}'))
  ];
  List<MultiDropDowStruct> get multiDropDow => _multiDropDow;
  set multiDropDow(List<MultiDropDowStruct> _value) {
    _multiDropDow = _value;
    prefs.setStringList(
        'ff_multiDropDow', _value.map((x) => x.serialize()).toList());
  }

  void addToMultiDropDow(MultiDropDowStruct _value) {
    _multiDropDow.add(_value);
    prefs.setStringList(
        'ff_multiDropDow', _multiDropDow.map((x) => x.serialize()).toList());
  }

  void removeFromMultiDropDow(MultiDropDowStruct _value) {
    _multiDropDow.remove(_value);
    prefs.setStringList(
        'ff_multiDropDow', _multiDropDow.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromMultiDropDow(int _index) {
    _multiDropDow.removeAt(_index);
    prefs.setStringList(
        'ff_multiDropDow', _multiDropDow.map((x) => x.serialize()).toList());
  }

  void updateMultiDropDowAtIndex(
    int _index,
    MultiDropDowStruct Function(MultiDropDowStruct) updateFn,
  ) {
    _multiDropDow[_index] = updateFn(_multiDropDow[_index]);
    prefs.setStringList(
        'ff_multiDropDow', _multiDropDow.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInMultiDropDow(int _index, MultiDropDowStruct _value) {
    _multiDropDow.insert(_index, _value);
    prefs.setStringList(
        'ff_multiDropDow', _multiDropDow.map((x) => x.serialize()).toList());
  }

  List<MultiDropDowStruct> _selecionado = [];
  List<MultiDropDowStruct> get selecionado => _selecionado;
  set selecionado(List<MultiDropDowStruct> _value) {
    _selecionado = _value;
    prefs.setStringList(
        'ff_selecionado', _value.map((x) => x.serialize()).toList());
  }

  void addToSelecionado(MultiDropDowStruct _value) {
    _selecionado.add(_value);
    prefs.setStringList(
        'ff_selecionado', _selecionado.map((x) => x.serialize()).toList());
  }

  void removeFromSelecionado(MultiDropDowStruct _value) {
    _selecionado.remove(_value);
    prefs.setStringList(
        'ff_selecionado', _selecionado.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromSelecionado(int _index) {
    _selecionado.removeAt(_index);
    prefs.setStringList(
        'ff_selecionado', _selecionado.map((x) => x.serialize()).toList());
  }

  void updateSelecionadoAtIndex(
    int _index,
    MultiDropDowStruct Function(MultiDropDowStruct) updateFn,
  ) {
    _selecionado[_index] = updateFn(_selecionado[_index]);
    prefs.setStringList(
        'ff_selecionado', _selecionado.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInSelecionado(int _index, MultiDropDowStruct _value) {
    _selecionado.insert(_index, _value);
    prefs.setStringList(
        'ff_selecionado', _selecionado.map((x) => x.serialize()).toList());
  }

  String _valor = 'f';
  String get valor => _valor;
  set valor(String _value) {
    _valor = _value;
  }

  String _token = '';
  String get token => _token;
  set token(String _value) {
    _token = _value;
    prefs.setString('ff_token', _value);
  }

  List<dynamic> _JSON = [];
  List<dynamic> get JSON => _JSON;
  set JSON(List<dynamic> _value) {
    _JSON = _value;
    prefs.setStringList('ff_JSON', _value.map((x) => jsonEncode(x)).toList());
  }

  void addToJSON(dynamic _value) {
    _JSON.add(_value);
    prefs.setStringList('ff_JSON', _JSON.map((x) => jsonEncode(x)).toList());
  }

  void removeFromJSON(dynamic _value) {
    _JSON.remove(_value);
    prefs.setStringList('ff_JSON', _JSON.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromJSON(int _index) {
    _JSON.removeAt(_index);
    prefs.setStringList('ff_JSON', _JSON.map((x) => jsonEncode(x)).toList());
  }

  void updateJSONAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _JSON[_index] = updateFn(_JSON[_index]);
    prefs.setStringList('ff_JSON', _JSON.map((x) => jsonEncode(x)).toList());
  }

  void insertAtIndexInJSON(int _index, dynamic _value) {
    _JSON.insert(_index, _value);
    prefs.setStringList('ff_JSON', _JSON.map((x) => jsonEncode(x)).toList());
  }

  List<ProdutosStruct> _Produtos = [];
  List<ProdutosStruct> get Produtos => _Produtos;
  set Produtos(List<ProdutosStruct> _value) {
    _Produtos = _value;
    prefs.setStringList(
        'ff_Produtos', _value.map((x) => x.serialize()).toList());
  }

  void addToProdutos(ProdutosStruct _value) {
    _Produtos.add(_value);
    prefs.setStringList(
        'ff_Produtos', _Produtos.map((x) => x.serialize()).toList());
  }

  void removeFromProdutos(ProdutosStruct _value) {
    _Produtos.remove(_value);
    prefs.setStringList(
        'ff_Produtos', _Produtos.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromProdutos(int _index) {
    _Produtos.removeAt(_index);
    prefs.setStringList(
        'ff_Produtos', _Produtos.map((x) => x.serialize()).toList());
  }

  void updateProdutosAtIndex(
    int _index,
    ProdutosStruct Function(ProdutosStruct) updateFn,
  ) {
    _Produtos[_index] = updateFn(_Produtos[_index]);
    prefs.setStringList(
        'ff_Produtos', _Produtos.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInProdutos(int _index, ProdutosStruct _value) {
    _Produtos.insert(_index, _value);
    prefs.setStringList(
        'ff_Produtos', _Produtos.map((x) => x.serialize()).toList());
  }

  List<DataTypeStruct> _dataType = [];
  List<DataTypeStruct> get dataType => _dataType;
  set dataType(List<DataTypeStruct> _value) {
    _dataType = _value;
    prefs.setStringList(
        'ff_dataType', _value.map((x) => x.serialize()).toList());
  }

  void addToDataType(DataTypeStruct _value) {
    _dataType.add(_value);
    prefs.setStringList(
        'ff_dataType', _dataType.map((x) => x.serialize()).toList());
  }

  void removeFromDataType(DataTypeStruct _value) {
    _dataType.remove(_value);
    prefs.setStringList(
        'ff_dataType', _dataType.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromDataType(int _index) {
    _dataType.removeAt(_index);
    prefs.setStringList(
        'ff_dataType', _dataType.map((x) => x.serialize()).toList());
  }

  void updateDataTypeAtIndex(
    int _index,
    DataTypeStruct Function(DataTypeStruct) updateFn,
  ) {
    _dataType[_index] = updateFn(_dataType[_index]);
    prefs.setStringList(
        'ff_dataType', _dataType.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInDataType(int _index, DataTypeStruct _value) {
    _dataType.insert(_index, _value);
    prefs.setStringList(
        'ff_dataType', _dataType.map((x) => x.serialize()).toList());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

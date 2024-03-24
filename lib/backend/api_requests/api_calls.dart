import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';
import 'interceptors.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class ViaCepCall {
  static Future<ApiCallResponse> call({
    int? cep,
  }) async {
    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'ViaCep',
        apiUrl: 'https://viacep.com.br/ws/${cep}/json',
        callType: ApiCallType.GET,
        headers: {},
        params: {},
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        alwaysAllowBody: false,
      ),
      interceptors,
    );
  }

  static final interceptors = [
    ExampleInterceptor(),
  ];

  static List? cep(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
}

class ValidaNetCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'ValidaNet',
      apiUrl: 'https://www.google.com.br',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}

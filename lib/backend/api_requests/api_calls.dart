import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start TakeANumberAPIGroup Group Code

class TakeANumberAPIGroupGroup {
  static String getBaseUrl() =>
      'https://47c4-197-36-207-117.ngrok-free.app/BackEnd_Server';
  static Map<String, String> headers = {};
  static GetDepartServingnoCall getDepartServingnoCall =
      GetDepartServingnoCall();
  static PrintNumberCall printNumberCall = PrintNumberCall();
  static ResetDepartQueueCall resetDepartQueueCall = ResetDepartQueueCall();
}

class GetDepartServingnoCall {
  Future<ApiCallResponse> call({
    String? departName = '',
  }) async {
    final baseUrl = TakeANumberAPIGroupGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "Depart": "${escapeStringForJson(departName)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GetDepartServingno',
      apiUrl: '${baseUrl}/Get_Depart_Serving_no',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? nowServing(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.NowServing''',
      ));
  String? peopleAhead(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.PeopleAhead''',
      ));
}

class PrintNumberCall {
  Future<ApiCallResponse> call({
    String? depart = '',
  }) async {
    final baseUrl = TakeANumberAPIGroupGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "Depart": "${escapeStringForJson(depart)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'PrintNumber',
      apiUrl: '${baseUrl}/Print_Number',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? ticketNumber(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.ticketNumber''',
      ));
}

class ResetDepartQueueCall {
  Future<ApiCallResponse> call({
    String? depart = '',
  }) async {
    final baseUrl = TakeANumberAPIGroupGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "Depart": "${escapeStringForJson(depart)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ResetDepartQueue',
      apiUrl: '${baseUrl}/Reset_Departs_Queue',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End TakeANumberAPIGroup Group Code

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

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}

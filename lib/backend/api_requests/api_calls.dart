import 'dart:convert';
import 'dart:typed_data';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start OpenAI ChatGPT Group Code

class OpenAIChatGPTGroup {
  static String baseUrl = 'https://api.openai.com/v1';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
  };
  static SendFullPromptCall sendFullPromptCall = SendFullPromptCall();
  static AskChatGPTCall askChatGPTCall = AskChatGPTCall();
  static GptCloneCallCall gptCloneCallCall = GptCloneCallCall();
}

class SendFullPromptCall {
  Future<ApiCallResponse> call({
    String? apiKey = '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',
    dynamic? promptJson,
  }) async {
    final prompt = _serializeJson(promptJson);
    final ffApiRequestBody = '''
{
  "model": "gpt-3.5-turbo",
  "messages": ${prompt}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Send Full Prompt',
      apiUrl: '${OpenAIChatGPTGroup.baseUrl}/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? choices(dynamic response) => getJsonField(
        response,
        r'''$.choices''',
        true,
      ) as List?;
  dynamic choicesIndex(dynamic response) => getJsonField(
        response,
        r'''$.choices[:].index''',
      );
  dynamic messageFull(dynamic response) => getJsonField(
        response,
        r'''$.choices[:].message''',
      );
  dynamic role(dynamic response) => getJsonField(
        response,
        r'''$.choices[:].message.role''',
      );
  dynamic messageContent(dynamic response) => getJsonField(
        response,
        r'''$.choices[:].message.content''',
      );
  dynamic promptTokens(dynamic response) => getJsonField(
        response,
        r'''$.usage.prompt_tokens''',
      );
  dynamic completionTokens(dynamic response) => getJsonField(
        response,
        r'''$.usage.completion_tokens''',
      );
  dynamic totalTokens(dynamic response) => getJsonField(
        response,
        r'''$.usage.total_tokens''',
      );
  dynamic chatId(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
  dynamic completion(dynamic response) => getJsonField(
        response,
        r'''$.object''',
      );
}

class AskChatGPTCall {
  Future<ApiCallResponse> call({
    String? apiKey = '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',
    dynamic? promptJson,
  }) async {
    final prompt = _serializeJson(promptJson);
    final ffApiRequestBody = '''
{
  "model": "gpt-3.5-turbo",
  "messages": ${prompt}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Ask ChatGPT',
      apiUrl: '${OpenAIChatGPTGroup.baseUrl}/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  List? allResponses(dynamic response) => getJsonField(
        response,
        r'''$.choices[:].message''',
        true,
      ) as List?;
  dynamic model(dynamic response) => getJsonField(
        response,
        r'''$.model''',
      );
  dynamic completion(dynamic response) => getJsonField(
        response,
        r'''$.object''',
      );
  dynamic chatId(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
  dynamic tokenUsage(dynamic response) => getJsonField(
        response,
        r'''$.usage''',
      );
  dynamic promptTokens(dynamic response) => getJsonField(
        response,
        r'''$.usage.prompt_tokens''',
      );
  dynamic completionTokens(dynamic response) => getJsonField(
        response,
        r'''$.usage.completion_tokens''',
      );
  dynamic totalTokens(dynamic response) => getJsonField(
        response,
        r'''$.usage.total_tokens''',
      );
  dynamic messageContent(dynamic response) => getJsonField(
        response,
        r'''$.choices[:].message.content''',
      );
  dynamic messageRole(dynamic response) => getJsonField(
        response,
        r'''$.choices[:].message.role''',
      );
  dynamic choioes(dynamic response) => getJsonField(
        response,
        r'''$.choices''',
      );
  dynamic createdDate(dynamic response) => getJsonField(
        response,
        r'''$.created''',
      );
}

class GptCloneCallCall {
  Future<ApiCallResponse> call({
    String? apiKey = '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',
    dynamic? promptJson,
  }) async {
    final prompt = _serializeJson(promptJson);
    final ffApiRequestBody = '''
{
  "model": "gpt-3.5-turbo",
  "messages": ${prompt}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Gpt Clone Call',
      apiUrl: '${OpenAIChatGPTGroup.baseUrl}/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  dynamic chatID(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
  dynamic gptModel(dynamic response) => getJsonField(
        response,
        r'''$.model''',
      );
  List? choices(dynamic response) => getJsonField(
        response,
        r'''$.choices''',
        true,
      ) as List?;
  dynamic messageSent(dynamic response) => getJsonField(
        response,
        r'''$.choices[:].message''',
      );
  dynamic messageRole(dynamic response) => getJsonField(
        response,
        r'''$.choices[:].message.role''',
      );
  dynamic messageResponse(dynamic response) => getJsonField(
        response,
        r'''$.choices[:].message.content''',
      );
  dynamic usageFull(dynamic response) => getJsonField(
        response,
        r'''$.usage''',
      );
  dynamic promptTokens(dynamic response) => getJsonField(
        response,
        r'''$.usage.prompt_tokens''',
      );
  dynamic completionTokens(dynamic response) => getJsonField(
        response,
        r'''$.usage.completion_tokens''',
      );
  dynamic totalTokens(dynamic response) => getJsonField(
        response,
        r'''$.usage.total_tokens''',
      );
  dynamic dateCreated(dynamic response) => getJsonField(
        response,
        r'''$.created''',
      );
}

/// End OpenAI ChatGPT Group Code

/// Start OpenAI ChatGPTTwo Group Code

class OpenAIChatGPTTwoGroup {
  static String baseUrl = 'https://api.openai.com/v1';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
  };
}

/// End OpenAI ChatGPTTwo Group Code

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

import 'headers.dart';
import 'query_string_parameters.dart';
import 'request_context.dart';

class RequestPayload {
  String? version;
  String? routeKey;
  String? rawPath;
  String? rawQueryString;
  List<String>? cookies;
  Headers? headers;
  QueryStringParameters? queryStringParameters;
  RequestContext? requestContext;
  String? body;
  dynamic pathParameters;
  bool? isBase64Encoded;
  dynamic stageVariables;

  RequestPayload({
    this.version,
    this.routeKey,
    this.rawPath,
    this.rawQueryString,
    this.cookies,
    this.headers,
    this.queryStringParameters,
    this.requestContext,
    this.body,
    this.pathParameters,
    this.isBase64Encoded,
    this.stageVariables,
  });

  @override
  String toString() {
    return 'RequestPayload(version: $version, routeKey: $routeKey, rawPath: $rawPath, rawQueryString: $rawQueryString, cookies: $cookies, headers: $headers, queryStringParameters: $queryStringParameters, requestContext: $requestContext, body: $body, pathParameters: $pathParameters, isBase64Encoded: $isBase64Encoded, stageVariables: $stageVariables)';
  }

  factory RequestPayload.fromJson(Map<String, dynamic> json) {
    return RequestPayload(
      version: json['version'],
      routeKey: json['routeKey'],
      rawPath: json['rawPath'],
      rawQueryString: json['rawQueryString'],
      cookies: json['cookies'] ,
      headers: json['headers'] == null
          ? null
          : Headers.fromJson(json['headers'] as Map<String, dynamic>),
      queryStringParameters: json['queryStringParameters'] == null
          ? null
          : QueryStringParameters.fromJson(
              json['queryStringParameters'] as Map<String, dynamic>),
      requestContext: json['requestContext'] == null
          ? null
          : RequestContext.fromJson(
              json['requestContext'] as Map<String, dynamic>),
      body: json['body'],
      pathParameters: json['pathParameters'],
      isBase64Encoded: json['isBase64Encoded'] as bool,
      stageVariables: json['stageVariables'],
    );
  }

  Map<String, dynamic> toJson() => {
        'version': version,
        'routeKey': routeKey,
        'rawPath': rawPath,
        'rawQueryString': rawQueryString,
        'cookies': cookies,
        'headers': headers?.toJson(),
        'queryStringParameters': queryStringParameters?.toJson(),
        'requestContext': requestContext?.toJson(),
        'body': body,
        'pathParameters': pathParameters,
        'isBase64Encoded': isBase64Encoded,
        'stageVariables': stageVariables,
      };

  RequestPayload copyWith({
    String? version,
    String? routeKey,
    String? rawPath,
    String? rawQueryString,
    List<String>? cookies,
    Headers? headers,
    QueryStringParameters? queryStringParameters,
    RequestContext? requestContext,
    String? body,
    dynamic pathParameters,
    bool? isBase64Encoded,
    dynamic stageVariables,
  }) {
    return RequestPayload(
      version: version ?? this.version,
      routeKey: routeKey ?? this.routeKey,
      rawPath: rawPath ?? this.rawPath,
      rawQueryString: rawQueryString ?? this.rawQueryString,
      cookies: cookies ?? this.cookies,
      headers: headers ?? this.headers,
      queryStringParameters:
          queryStringParameters ?? this.queryStringParameters,
      requestContext: requestContext ?? this.requestContext,
      body: body ?? this.body,
      pathParameters: pathParameters ?? this.pathParameters,
      isBase64Encoded: isBase64Encoded ?? this.isBase64Encoded,
      stageVariables: stageVariables ?? this.stageVariables,
    );
  }
}

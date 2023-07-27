import 'authorizer.dart';
import 'http.dart';

class RequestContext {
  String? accountId;
  String? apiId;
  dynamic authentication;
  Authorizer? authorizer;
  String? domainName;
  String? domainPrefix;
  Http? http;
  String? requestId;
  String? routeKey;
  String? stage;
  String? time;
  int? timeEpoch;

  RequestContext({
    this.accountId,
    this.apiId,
    this.authentication,
    this.authorizer,
    this.domainName,
    this.domainPrefix,
    this.http,
    this.requestId,
    this.routeKey,
    this.stage,
    this.time,
    this.timeEpoch,
  });

  @override
  String toString() {
    return 'RequestContext(accountId: $accountId, apiId: $apiId, authentication: $authentication, authorizer: $authorizer, domainName: $domainName, domainPrefix: $domainPrefix, http: $http, requestId: $requestId, routeKey: $routeKey, stage: $stage, time: $time, timeEpoch: $timeEpoch)';
  }

  factory RequestContext.fromJson(Map<String, dynamic> json) {
    return RequestContext(
      accountId: json['accountId'],
      apiId: json['apiId'],
      authentication: json['authentication'],
      authorizer: json['authorizer'] == null
          ? null
          : Authorizer.fromJson(json['authorizer'] as Map<String, dynamic>),
      domainName: json['domainName'],
      domainPrefix: json['domainPrefix'],
      http: json['http'] == null
          ? null
          : Http.fromJson(json['http'] as Map<String, dynamic>),
      requestId: json['requestId'],
      routeKey: json['routeKey'],
      stage: json['stage'],
      time: json['time'],
      timeEpoch: json['timeEpoch'],
    );
  }

  Map<String, dynamic> toJson() => {
        'accountId': accountId,
        'apiId': apiId,
        'authentication': authentication,
        'authorizer': authorizer?.toJson(),
        'domainName': domainName,
        'domainPrefix': domainPrefix,
        'http': http?.toJson(),
        'requestId': requestId,
        'routeKey': routeKey,
        'stage': stage,
        'time': time,
        'timeEpoch': timeEpoch,
      };

  RequestContext copyWith({
    String? accountId,
    String? apiId,
    dynamic authentication,
    Authorizer? authorizer,
    String? domainName,
    String? domainPrefix,
    Http? http,
    String? requestId,
    String? routeKey,
    String? stage,
    String? time,
    int? timeEpoch,
  }) {
    return RequestContext(
      accountId: accountId ?? this.accountId,
      apiId: apiId ?? this.apiId,
      authentication: authentication ?? this.authentication,
      authorizer: authorizer ?? this.authorizer,
      domainName: domainName ?? this.domainName,
      domainPrefix: domainPrefix ?? this.domainPrefix,
      http: http ?? this.http,
      requestId: requestId ?? this.requestId,
      routeKey: routeKey ?? this.routeKey,
      stage: stage ?? this.stage,
      time: time ?? this.time,
      timeEpoch: timeEpoch ?? this.timeEpoch,
    );
  }
}

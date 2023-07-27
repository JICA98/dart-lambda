class Http {
  String? method;
  String? path;
  String? protocol;
  String? sourceIp;
  String? userAgent;

  Http({
    this.method,
    this.path,
    this.protocol,
    this.sourceIp,
    this.userAgent,
  });

  @override
  String toString() {
    return 'Http(method: $method, path: $path, protocol: $protocol, sourceIp: $sourceIp, userAgent: $userAgent)';
  }

  factory Http.fromJson(Map<String, dynamic> json) => Http(
        method: json['method'] as String,
        path: json['path'] as String,
        protocol: json['protocol'] as String,
        sourceIp: json['sourceIp'] as String,
        userAgent: json['userAgent'] as String,
      );

  Map<String, dynamic> toJson() => {
        'method': method,
        'path': path,
        'protocol': protocol,
        'sourceIp': sourceIp,
        'userAgent': userAgent,
      };

  Http copyWith({
    String? method,
    String? path,
    String? protocol,
    String? sourceIp,
    String? userAgent,
  }) {
    return Http(
      method: method ?? this.method,
      path: path ?? this.path,
      protocol: protocol ?? this.protocol,
      sourceIp: sourceIp ?? this.sourceIp,
      userAgent: userAgent ?? this.userAgent,
    );
  }
}

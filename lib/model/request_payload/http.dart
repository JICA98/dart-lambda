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
        method: json['method'],
        path: json['path'],
        protocol: json['protocol'],
        sourceIp: json['sourceIp'],
        userAgent: json['userAgent'],
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

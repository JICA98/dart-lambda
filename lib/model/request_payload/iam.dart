class Iam {
  String? accessKey;
  String? accountId;
  String? callerId;
  dynamic cognitoIdentity;
  dynamic principalOrgId;
  String? userArn;
  String? userId;

  Iam({
    this.accessKey,
    this.accountId,
    this.callerId,
    this.cognitoIdentity,
    this.principalOrgId,
    this.userArn,
    this.userId,
  });

  @override
  String toString() {
    return 'Iam(accessKey: $accessKey, accountId: $accountId, callerId: $callerId, cognitoIdentity: $cognitoIdentity, principalOrgId: $principalOrgId, userArn: $userArn, userId: $userId)';
  }

  factory Iam.fromJson(Map<String, dynamic> json) => Iam(
        accessKey: json['accessKey'] as String,
        accountId: json['accountId'] as String,
        callerId: json['callerId'] as String,
        cognitoIdentity: json['cognitoIdentity'] as dynamic,
        principalOrgId: json['principalOrgId'] as dynamic,
        userArn: json['userArn'] as String,
        userId: json['userId'] as String,
      );

  Map<String, dynamic> toJson() => {
        'accessKey': accessKey,
        'accountId': accountId,
        'callerId': callerId,
        'cognitoIdentity': cognitoIdentity,
        'principalOrgId': principalOrgId,
        'userArn': userArn,
        'userId': userId,
      };

  Iam copyWith({
    String? accessKey,
    String? accountId,
    String? callerId,
    dynamic cognitoIdentity,
    dynamic principalOrgId,
    String? userArn,
    String? userId,
  }) {
    return Iam(
      accessKey: accessKey ?? this.accessKey,
      accountId: accountId ?? this.accountId,
      callerId: callerId ?? this.callerId,
      cognitoIdentity: cognitoIdentity ?? this.cognitoIdentity,
      principalOrgId: principalOrgId ?? this.principalOrgId,
      userArn: userArn ?? this.userArn,
      userId: userId ?? this.userId,
    );
  }
}

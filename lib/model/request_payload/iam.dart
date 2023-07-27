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
        accessKey: json['accessKey'],
        accountId: json['accountId'],
        callerId: json['callerId'],
        cognitoIdentity: json['cognitoIdentity'],
        principalOrgId: json['principalOrgId'],
        userArn: json['userArn'],
        userId: json['userId'],
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

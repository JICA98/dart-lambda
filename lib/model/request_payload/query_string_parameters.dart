class QueryStringParameters {
  String? parameter1;
  String? parameter2;

  QueryStringParameters({this.parameter1, this.parameter2});

  @override
  String toString() {
    return 'QueryStringParameters(parameter1: $parameter1, parameter2: $parameter2)';
  }

  factory QueryStringParameters.fromJson(Map<String, dynamic> json) {
    return QueryStringParameters(
      parameter1: json['parameter1'],
      parameter2: json['parameter2'],
    );
  }

  Map<String, dynamic> toJson() => {
        'parameter1': parameter1,
        'parameter2': parameter2,
      };

  QueryStringParameters copyWith({
    String? parameter1,
    String? parameter2,
  }) {
    return QueryStringParameters(
      parameter1: parameter1 ?? this.parameter1,
      parameter2: parameter2 ?? this.parameter2,
    );
  }
}

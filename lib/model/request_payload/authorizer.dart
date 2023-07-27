import 'iam.dart';

class Authorizer {
  Iam? iam;

  Authorizer({this.iam});

  @override
  String toString() => 'Authorizer(iam: $iam)';

  factory Authorizer.fromJson(Map<String, dynamic> json) => Authorizer(
        iam: json['iam'] == null
            ? null
            : Iam.fromJson(json['iam'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'iam': iam?.toJson(),
      };

  Authorizer copyWith({
    Iam? iam,
  }) {
    return Authorizer(
      iam: iam ?? this.iam,
    );
  }
}

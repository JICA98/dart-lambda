class Headers {
  String? header1;
  String? header2;

  Headers({this.header1, this.header2});

  @override
  String toString() => 'Headers(header1: $header1, header2: $header2)';

  factory Headers.fromJson(Map<String, dynamic> json) => Headers(
        header1: json['header1'] as String,
        header2: json['header2'] as String,
      );

  Map<String, dynamic> toJson() => {
        'header1': header1,
        'header2': header2,
      };

  Headers copyWith({
    String? header1,
    String? header2,
  }) {
    return Headers(
      header1: header1 ?? this.header1,
      header2: header2 ?? this.header2,
    );
  }
}

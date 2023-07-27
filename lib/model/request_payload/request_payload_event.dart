import 'dart:convert';

class RequestPayloadEvent {
  final Map<String, dynamic> json;
  static RequestPayloadEvent fromJson(Map<String, dynamic> json) =>
      RequestPayloadEvent(json);

  const RequestPayloadEvent(this.json);

  @override
  String toString() {
    return jsonEncode(json);
  }
}

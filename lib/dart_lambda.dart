
import 'dart:math';

import 'package:dart_lambda/logging/log.dart';
import 'package:dart_lambda/model/request_payload/request_payload.dart';
import 'package:dart_lambda/model/request_payload/request_payload_event.dart';

Future<dynamic> handleLambdaEvent(context, event) async {
  log("event: $event");
  if (event is RequestPayloadEvent) {
    RequestPayload payload = RequestPayload.fromJson(event.json);
    log(payload);
    await Future.delayed(const Duration(seconds: 1));
    return 'SUCCESS ${payload.body}';
  } else {
    return 'FAILED';
  }
}
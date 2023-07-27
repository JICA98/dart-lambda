// Copyright (c) 2014, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:aws_lambda_dart_runtime/aws_lambda_dart_runtime.dart';
import 'package:dart_lambda/dart_lambda.dart' as dart_lambda;
import 'package:dart_lambda/model/request_payload/request_payload_event.dart';

void main() {
  Runtime()
    ..registerEvent<RequestPayloadEvent>(RequestPayloadEvent.fromJson)
    ..registerHandler<RequestPayloadEvent>(
        "hello.handler", dart_lambda.handleLambdaEvent)
    ..invoke();
}

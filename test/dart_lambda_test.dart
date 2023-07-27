import 'package:dart_lambda/dart_lambda.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(handleLambdaEvent(null, null), 'FAILED');
  });
}

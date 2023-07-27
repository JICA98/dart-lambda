import 'dart:io';

class Environment {
  Environment._();
  static Environment i = Environment._();

  Map<String, Object> get environment {
    return Platform.environment;
  }
}

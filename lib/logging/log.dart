/// LOG-Config
class LogConfig {
  bool debugMode;

  LogConfig({this.debugMode = true});
}

final logConfig = LogConfig();

/// LOG
void log(dynamic message) {
  if (logConfig.debugMode) {
    final time = DateTime.now().toIso8601String();
    if (message == null) {
      print('$time  null');
    } else {
      print('$time  $message');
    }
  }
}

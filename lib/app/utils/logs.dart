part of '_index.dart';

final logx = LogWithoutType();
final logxx = LogWithType();

final logz = LogIconWithoutType();
final logzz = LogIconWithType();

class LogWithoutType {
  void i(String msg) => developer.log('\x1B[37m$msg\x1B[0m', name: '...');
  void s(String msg) => developer.log('\x1B[32m$msg\x1B[0m', name: '...');
  void w(String msg) => developer.log('\x1B[93m$msg\x1B[0m', name: '...');
  void e(String msg) => developer.log('\x1B[31m$msg\x1B[0m', name: '...');
  void wtf(String msg) => developer.log('\x1B[35m$msg\x1B[0m', name: '...');
}

class LogWithType {
  void i(Type type, String msg) => developer.log('\x1B[37m${type.toString()}: $msg\x1B[0m', name: '...');
  void s(Type type, String msg) => developer.log('\x1B[32m${type.toString()}: $msg\x1B[0m', name: '...');
  void w(Type type, String msg) => developer.log('\x1B[93m${type.toString()}: $msg\x1B[0m', name: '...');
  void e(Type type, String msg) => developer.log('\x1B[31m${type.toString()}: $msg\x1B[0m', name: '...');
  void wtf(Type type, String msg) => developer.log('\x1B[35m${type.toString()}: $msg\x1B[0m', name: '...');
}

class LogIconWithoutType {
  void i(String msg) => developer.log('\x1B[37m$msg\x1B[0m', name: '🐻‍❄️');
  void s(String msg) => developer.log('\x1B[32m$msg\x1B[0m', name: '💚');
  void w(String msg) => developer.log('\x1B[93m$msg\x1B[0m', name: '🐤');
  void e(String msg) => developer.log('\x1B[31m$msg\x1B[0m', name: '🦞');
  void wtf(String msg) => developer.log('\x1B[35m$msg\x1B[0m', name: '😈');
}

class LogIconWithType {
  void i(Type type, String msg) => developer.log('\x1B[37m${type.toString()}: $msg\x1B[0m', name: '🐻‍❄️');
  void s(Type type, String msg) => developer.log('\x1B[32m${type.toString()}: $msg\x1B[0m', name: '💚');
  void w(Type type, String msg) => developer.log('\x1B[93m${type.toString()}: $msg\x1B[0m', name: '🐤');
  void e(Type type, String msg) => developer.log('\x1B[31m${type.toString()}: $msg\x1B[0m', name: '🦞');
  void wtf(Type type, String msg) => developer.log('\x1B[35m${type.toString()}: $msg\x1B[0m', name: '😈');
}

// info - blue
// success - green
// warning - yellow
// error - red
// wtf - magenta

// => \x1B[30m	Black
// => \x1B[31m	Red
// => \x1B[32m	Green
// => \x1B[33m	Yellow
// => \x1B[34m	Blue
// => \x1B[35m	Magenta
// => \x1B[36m	Cyan
// => \x1B[37m	White
// => \x1B[39m	Default(foreground color at startup)
// => \x1B[90m	Light Gray
// => \x1B[91m	Light Red
// => \x1B[92m	Light Green
// => \x1B[93m	Light Yellow
// => \x1B[94m	Light Blue
// => \x1B[95m	Light Magenta
// => \x1B[96m	Light Cyan
// => \x1B[97m	Light White
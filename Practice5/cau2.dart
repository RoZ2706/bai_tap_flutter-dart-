import 'dart:io';

void main() {
  File file = File('hello.txt');
  String name = file.readAsStringSync();
  file.writeAsStringSync('${name}\nCó gì đâu mà sợ');
}

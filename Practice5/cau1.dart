import 'dart:io';

void main() {
  File file = File('hello.txt');
  file.writeAsStringSync('Vũ nè đừng sợ');
  file.create();
}

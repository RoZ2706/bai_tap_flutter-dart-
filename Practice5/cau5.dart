import 'dart:io';

void main() {
  for (int i = 0; i < 100; i++) {
    File file = File('hello${i}.txt');
    file.create();
  }
}

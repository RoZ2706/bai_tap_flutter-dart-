import 'dart:io';

void main() {
  File file = File('student.csv');
  file.writeAsStringSync('name, age, address\nVũ, 22, HP\nBiên, 17, BD');
  file.create();
}

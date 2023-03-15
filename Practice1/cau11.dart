import 'dart:io';
void main(){
    print("Total bill amount:");
    int? total = int.parse(stdin.readLineSync()!);
    print("Number of people:");
    int? nop = int.parse(stdin.readLineSync()!);
    double Formula= (total) / nop;
    print(Formula);
}
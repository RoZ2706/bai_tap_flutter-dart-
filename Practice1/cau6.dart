import 'dart:io';
void main(){
    print("Firstname:");
    String? first = stdin.readLineSync();
    print("Lastname:");
    String? last = stdin.readLineSync();
    print("Fullname: $first $last");
}
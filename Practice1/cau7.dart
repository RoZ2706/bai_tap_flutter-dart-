import 'dart:io';
void main(){
    print("Nhập x:");
    int? x = int.parse(stdin.readLineSync()!);
    print("Nhập y:");
    int? y = int.parse(stdin.readLineSync()!);
    print(x/y);
    print(x%y);
}
import 'dart:io';
void main(){
    print("Nhập n:");
    int? n = int.parse(stdin.readLineSync()!);
    if(n%2==0) print("n là số chẵn");
    else print("n là số lẻ");
}
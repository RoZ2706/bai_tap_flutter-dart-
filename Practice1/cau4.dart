import 'dart:io';
void main(){
    print("p = ");
    int? p = int.parse(stdin.readLineSync()!);
    print("t = ");
    int? t = int.parse(stdin.readLineSync()!);
    print("r = ");
    int? r = int.parse(stdin.readLineSync()!);
    double Formula= (p * t * r) / 100;
    print("Formula = $Formula");
}
class Laptop {
  String? id;
  String? name;
  int? ram;

  void display() {
    print("ID: $id; Tên: $name; RAM: $ram GB");
  }
}

void main() {
  Laptop lt1 = Laptop();
  lt1.id = 'l1';
  lt1.name = 'Laptop MSI';
  lt1.ram = 8;
  Laptop lt2 = Laptop();
  lt2.id = 'l2';
  lt2.name = 'Laptop ASUS';
  lt2.ram = 8;
  Laptop lt3 = Laptop();
  lt3.id = 'l3';
  lt3.name = 'Laptop ROG';
  lt3.ram = 16;
  lt1.display();
  lt2.display();
  lt3.display();
}

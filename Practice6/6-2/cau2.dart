class Animal {
  String? id;
  String? name;
  String? color;

  void display() {
    print('ID: $id, Tên: $name, Màu lông: $color');
  }
}

class Cats extends Animal {
  String? sound;

  void displayCat() {
    print('Nó kêu: $sound');
  }
}

void main() {
  Cats cat = Cats();
  cat.id = 'c1';
  cat.name = 'Mòe';
  cat.color = 'Tam thể';
  cat.sound = 'nyan~';
  cat.display();
  cat.displayCat();
}

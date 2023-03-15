class mother {
  void display() {
    print('mother');
  }
}

class daughter extends mother {
  @override
  void display() {
    print('daughter');
  }
}

void main() {
  daughter x = daughter();
  x.display();
}

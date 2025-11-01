class Laptop {
  int id;
  String name;
  String ram;

  Laptop(this.id, this.name, this.ram);

  void display() {
    print("ID: $id, Name: $name, RAM: $ram");
  }
}

void main() {
  Laptop l1 = Laptop(1, "Macbook", "M1");
  Laptop l2 = Laptop(2, "HP envy", "8GB");
  Laptop l3 = Laptop(3, "ASUS", "6GB");

  l1.display();
  l2.display();
  l3.display();
}

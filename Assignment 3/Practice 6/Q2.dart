class House {
  int id;
  String name;
  double price;

  House(this.id, this.name, this.price);

  void display() {
    print("ID: $id, Name: $name, Price: \$${price}");
  }
}

void main() {
  List<House> houses = [
    House(1, "Mohuruho Cottage", 250000),
    House(2, "Sea view Cottage", 175000),
    House(3, "Forrest view Cottage", 200000),
  ];

  for (var house in houses) {
    house.display();
  }
}

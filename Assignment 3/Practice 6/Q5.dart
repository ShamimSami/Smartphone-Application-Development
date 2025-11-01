class Camera {
  int _id;
  String _brand;
  String _color;
  double _price;

  Camera(this._id, this._brand, this._color, this._price);

  //getters
  int get id => _id;
  String get brand => _brand;
  String get color => _color;
  double get price => _price;

  //set the values
  set id(int value) => _id = value;
  set brand(String value) => _brand = value;
  set color(String value) => _color = value;
  set price(double value) => _price = value;

  void display() {
    print("ID: $_id, Brand: $_brand, Color: $_color, Price: \$$_price");
  }
}

void main() {
  Camera c1 = Camera(1, "Fujifilm", "Black", 55000);
  Camera c2 = Camera(2, "Panasonic", "Silver", 60000);
  Camera c3 = Camera(3, "Olympus", "Black", 70000);

  c1.display();
  c2.display();
  c3.display();
}

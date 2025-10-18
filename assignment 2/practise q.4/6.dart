void main() {
  Map<String, dynamic> info = {
    "name": "Sami",
    "address": "Dhaka",
    "age": 21,
    "country": "Bangladesh",
  };
  info["country"] = "Canada";
  info.forEach((key, value) => print("$key: $value"));
}

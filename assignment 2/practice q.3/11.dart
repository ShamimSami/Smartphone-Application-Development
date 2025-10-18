Map<String, dynamic> createUser(String name, int age, [bool isActive = true]) {
  return {'name': name, 'age': age, 'isActive': isActive};
}

void main() {
  print(createUser("Asif", 22));
}

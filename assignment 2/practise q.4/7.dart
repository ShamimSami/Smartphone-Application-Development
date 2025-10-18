void main() {
  Map<String, String> contact = {"name": "Sami", "phone": "01636273710"};
  var keysWithLength4 = contact.keys.where((k) => k.length == 4).toList();
  print(keysWithLength4);
}

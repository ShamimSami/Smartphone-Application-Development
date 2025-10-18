void main() {
  List<String> friends = [
    "Arafat",
    "Sami",
    "Asif",
    "Tania",
    "Arman",
    "Rima",
    "Rafi",
  ];
  var result = friends.where((name) => name.toLowerCase().startsWith('a'));
  print(result.toList());
}

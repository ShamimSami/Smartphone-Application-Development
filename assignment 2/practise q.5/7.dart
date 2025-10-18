import 'dart:io';

void main() {
  File file = File('students.csv');
  file.writeAsStringSync('Name,Age,Address\n');
  file.writeAsStringSync('Alif,20,Dhaka\n', mode: FileMode.append);
  file.writeAsStringSync('Rayhan,22,Chittagong\n', mode: FileMode.append);
  file.writeAsStringSync('Chadni,21,Khulna\n', mode: FileMode.append);

  String content = file.readAsStringSync();
  print(content);
}

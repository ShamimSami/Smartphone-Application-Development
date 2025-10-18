import 'dart:io';

void main() async {
  final file = File('friends.txt');
  String friendName = 'Nabid';
  await file.writeAsString('$friendName\n', mode: FileMode.append);
  print('Friend\'s name "$friendName" appended successfully!');
}

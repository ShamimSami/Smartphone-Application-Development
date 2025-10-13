import 'dart:io';

void main() {
  stdout.write('Enter a string: ');
  String input = stdin.readLineSync()!;

  String noSpaces = input.replaceAll(' ', '');

  print('String without spaces: $noSpaces');
}

import 'dart:io';

void main() {
  stdout.write('Enter a number as string: ');
  String input = stdin.readLineSync()!;

  int number = int.parse(input);

  print('Converted integer: $number');
}

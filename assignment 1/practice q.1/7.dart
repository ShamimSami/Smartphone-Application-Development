import 'dart:io';

void main() {
  stdout.write('Enter the dividend: ');
  int dividend = int.parse(stdin.readLineSync()!);

  stdout.write('Enter the divisor: ');
  int divisor = int.parse(stdin.readLineSync()!);

  int quotient = dividend ~/ divisor; // integer division
  int remainder = dividend % divisor; // modulus operator

  print('Quotient: $quotient');
  print('Remainder: $remainder');
}

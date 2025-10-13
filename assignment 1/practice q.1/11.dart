import 'dart:io';

void main() {
  stdout.write('Enter total bill amount: ');
  double totalBill = double.parse(stdin.readLineSync()!);

  stdout.write('Enter number of people: ');
  int people = int.parse(stdin.readLineSync()!);

  if (people == 0) {
    print('Number of people cannot be zero.');
  } else {
    double splitAmount = totalBill / people;
    print('Each person should pay: \$${splitAmount.toStringAsFixed(2)}');
  }
}

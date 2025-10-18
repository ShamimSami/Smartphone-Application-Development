import 'dart:io';

void main() {
  stdout.write('Enter number of expenses: ');
  int n = int.parse(stdin.readLineSync()!);

  double total = 0;

  for (int i = 0; i < n; i++) {
    stdout.write('Enter expense ${i + 1}: ');
    double amount = double.parse(stdin.readLineSync()!);
    total += amount;
  }

  print('Total expenses: $total');
}

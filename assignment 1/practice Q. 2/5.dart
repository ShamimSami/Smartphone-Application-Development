import 'dart:io';

void main() {
  // Ask the user to enter a number
  stdout.write("Enter a positive number: ");
  int n = int.parse(stdin.readLineSync()!);

  // Initialize sum
  int sum = 0;

  // Calculate the sum using a for loop
  for (int i = 1; i <= n; i++) {
    sum += i;
  }

  print("The sum of natural numbers up to $n is $sum.");
}

import 'dart:io';

void main() {
  // Ask the user to enter a number
  stdout.write("Enter a number: ");
  int? number = int.parse(stdin.readLineSync()!);

  // Check whether the number is positive, negative, or zero
  if (number > 0) {
    print("$number is positive.");
  } else if (number < 0) {
    print("$number is negative.");
  } else {
    print("The number is zero.");
  }
}

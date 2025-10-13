import 'dart:io';

void main() {
  // Ask the user to enter a character
  stdout.write("Enter a character: ");
  String? input = stdin.readLineSync();

  // Check if input is valid
  if (input == null || input.length != 1) {
    print("Please enter a single character.");
    return;
  }

  String ch = input.toLowerCase(); // Convert to lowercase for simplicity

  // Check if the character is a vowel or consonant
  if (ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u') {
    print("$ch is a vowel.");
  } else if (RegExp(r'^[a-z]$').hasMatch(ch)) {
    print("$ch is a consonant.");
  } else {
    print("Invalid input. Please enter an alphabet character.");
  }
}

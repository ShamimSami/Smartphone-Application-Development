void main() {
  // Loop through numbers 1 to 9
  for (int number = 1; number <= 9; number++) {
    print("\nMultiplication Table of $number:");
    
    // Loop through 1 to 10 for each number
    for (int i = 1; i <= 10; i++) {
      print("$number x $i = ${number * i}");
    }
  }
}

import 'dart:math';

String generatePassword(int length) {
  const chars =
      'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789@#\$%';
  Random rand = Random();
  return List.generate(
    length,
    (index) => chars[rand.nextInt(chars.length)],
  ).join();
}

void main() {
  print(generatePassword(8));
}

num maxNumber(num a, num b, num c) {
  return [a, b, c].reduce((curr, next) => curr > next ? curr : next);
}

void main() {
  print(maxNumber(4, 9, 7));
}

int checkNull(int? value) {
  return value ?? 0;
}

void main() {
  print(checkNull(120));
  print(checkNull(null));
}

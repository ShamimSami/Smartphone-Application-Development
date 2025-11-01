enum Gender { male, female, others }

void main() {
  print("All gender values:");
  for (var gender in Gender.values) {
    print(gender);
  }
}

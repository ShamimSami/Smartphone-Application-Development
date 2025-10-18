import 'dart:io';

void main() {
  List<String> tasks = [];
  while (true) {
    print("\n1. Add Task\n2. Remove Task\n3. View Tasks\n4. Exit");
    stdout.write("Choose option: ");
    int choice = int.parse(stdin.readLineSync()!);
    if (choice == 1) {
      stdout.write("Enter task: ");
      tasks.add(stdin.readLineSync()!);
    } else if (choice == 2) {
      stdout.write("Enter task to remove: ");
      tasks.remove(stdin.readLineSync()!);
    } else if (choice == 3) {
      print("Your Tasks: $tasks");
    } else if (choice == 4) {
      break;
    }
  }
}

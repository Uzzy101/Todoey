class Task {
  Task({this.name, this.isDone = false});

  final String? name;
  bool isDone;

  toggleIsDone() {
    isDone = !isDone;
  }
}

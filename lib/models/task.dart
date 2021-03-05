class Task {
  bool isDone;
  final String text;
  Task({this.text, this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }
}

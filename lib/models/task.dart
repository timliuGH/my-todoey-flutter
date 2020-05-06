// Describes a Task

class Task {
  final String taskString;
  bool isDone; // Initially false by default

  Task({this.taskString, this.isDone = false});

  void toggleIsDone() {
    isDone = !isDone;
  }
}

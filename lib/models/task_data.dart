import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: 'FuFu'),
    Task(name: 'Eba'),
    Task(name: 'Rice'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  removeTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

  updateTask(Task task) {
    task.toggleIsDone();
    notifyListeners();
  }
}

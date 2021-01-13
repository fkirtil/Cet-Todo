import 'package:cet_todo_app/models/task_item.dart';
import 'package:flutter/cupertino.dart';
import 'dart:collection';

class TaskRepository extends ChangeNotifier {
  List<TaskItem> tasks = []; // uygulamayı aç/kapa yapınca değişikler gidecektir.

  TaskRepository() {
  }
  int taskCount() {
    return tasks.length;
  }

  int incompleteTaskCount() {
    return tasks.where((t) => !t.isDone).length;
  }

  void addTask(TaskItem task) {
    tasks.add(task);

    notifyListeners();
  }

  void toggleTask(TaskItem task) {
    task.isDone = !task.isDone;

    notifyListeners(); // done olarak güncelliyor.
  }

  void deleteTask(TaskItem task) {
    tasks.remove(task);
    notifyListeners();
  }
}

import 'package:cet_todo_app/models/task_repository.dart';
import 'package:cet_todo_app/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider<TaskRepository>(
    create: (context) => TaskRepository(),
    child: MaterialApp(
      home: MainScreen(),
    ),
  ));
}

import 'package:flutter/material.dart';
import 'package:cet_todo_app/models/task_item.dart';
import 'package:cet_todo_app/models/task_repository.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cet_todo_app/widgets/task_tile.dart';
import 'package:cet_todo_app/database/database_helper.dart';
import 'package:intl/intl.dart';


class AddTaskScreen extends StatefulWidget {
  final TaskTile task;
  final Function updateTaskList;

  const AddTaskScreen({Key key, this.task, this.updateTaskList})
      : super(key: key);

  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

  @override
  Widget build(BuildContext context) {
    String taskTitle;
    return SingleChildScrollView(
      child: Container(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, color: Colors.lightBlueAccent),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                onChanged: (newText) {
                  taskTitle = newText;
                  print(newText);
                },
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.lightBlueAccent, fontSize: 20),
                autofocus: true,
              ),
              SizedBox(
                height: 10,
              ),
              FlatButton(
                  onPressed: () {
                    if (taskTitle != null) {
                      Provider.of<TaskRepository>(context, listen: false)
                          .addTask(TaskItem(title: taskTitle, isDone: false));
                    }
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    'Add',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.lightBlueAccent)
            ],
          ),
        ),
      ),
    );
  }
}

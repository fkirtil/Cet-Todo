import 'package:flutter/material.dart';

class TaskTile{
  int id;
  String title;
  bool isDone;
  Function onCheckboxClicked;
  Function onLongPress;

  TaskTile({
    this.id,
    this.title,
    this.isDone,
    this.onCheckboxClicked,
    this.onLongPress,
  });
  TaskTile.withId({
    this.id,
    this.title,
    this.isDone,
    this.onCheckboxClicked,
    this.onLongPress,
  });

  Map<String, dynamic> toMap() {
    final map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = id;
    }
    map['title'] = title;
    map['isDone'] = isDone;
    map['onCheckboxClicked'] = onCheckboxClicked;
    map['onLongPress'] = onLongPress;
    return map;
  }

  factory TaskTile.fromMap(Map<String, dynamic> map) {
    return TaskTile.withId(
        id: map['id'],
        title: map['title'],
        isDone: map['isDone'],
        onCheckboxClicked: map['onCheckboxClicked'],
        onLongPress: map['onLongPress']);
  }
}



  /*@override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPress,
      title: Text(
        this.title,
        style: TextStyle(
          color: Colors.lightBlueAccent,
          decoration: isDone ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isDone,
        activeColor: Colors.lightBlueAccent,
        onChanged: onCheckboxClicked,
      ),
    );
  }
  */

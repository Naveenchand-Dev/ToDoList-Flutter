import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallBack;
  final Function remove;

  TaskTile(
      {this.isChecked, this.taskTitle, this.checkboxCallBack, this.remove});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: remove,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: checkboxCallBack,
      ),
    );
  }
}

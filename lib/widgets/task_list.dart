import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.getCount(),
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              taskTitle: task.text,
              isChecked: task.isDone,
              checkboxCallBack: (checkBoxState) {
                taskData.updateTask(task);
              },
              remove: () {
                taskData.deleteTask(task);
              },
            );
          },
        );
      },
    );
  }
}

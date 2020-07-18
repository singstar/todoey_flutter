import 'package:flutter/material.dart';
import 'package:todoeyflutter/widget/task_tile.dart';
import 'package:todoeyflutter/model/task.dart';

class TaskList extends StatefulWidget {
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(name:'Buy1'),
    Task(name:'Buy2'),
    Task(name:'Buy3'),
  ];



  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index){
      return TaskTile(
        taskTitle: tasks[index].name, isChecked: tasks[index].isDone,
      );
    },itemCount: tasks.length,);
  }
}

import 'package:flutter/material.dart';

import '../models/task_model.dart';

class AppViewModel extends ChangeNotifier {
  List<Task> tasks = <Task>[];

  Color clr1 = Colors.grey.shade50;
  Color clr2 = Colors.grey.shade200;
  Color clr3 = Colors.grey.shade800;
  Color clr4 = Colors.grey.shade900;
  Color clr5 = Color.fromARGB(255, 148, 158, 149);

  int get numberOfTaks => tasks.length;
  void addTask(Task newTask) {
    tasks.add(newTask);
    notifyListeners();
  }

  bool getTaskValue(int taskIndex) {
    return tasks[taskIndex].complete;
  }

  void deleteTask(int taskIndex) {
    tasks.removeAt(taskIndex);
    notifyListeners();
  }

  String getTaskTitle(int taskIndex) {
    return tasks[taskIndex].title;
  }

  void setTaskState(int taskIndex, bool taskState) {
    tasks[taskIndex].complete = taskState;
    notifyListeners();
  }

  void bottonSheetBuilder(Widget bottomSheetView, BuildContext context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        context: context,
        builder: ((context) {
          return bottomSheetView;
        }));
  }
}

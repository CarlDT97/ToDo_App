import 'package:flutter/material.dart';
import 'package:todo_app/views/bottom_sheets/header_view.dart';
import 'package:todo_app/views/bottom_sheets/task_list_view.dart';

import 'add_task_view.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding:
                    EdgeInsets.only(bottom: 8.0), // Adjust the margin as needed
                child: HeaderAppView(),
              ),
            ),
            Expanded(
              flex: 7,
              child: TaskListView(),
            ),
          ],
        ),
      ),
      floatingActionButton: AddTaskView(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:todo_app/view_models/app_view_model.dart';
import 'package:todo_app/views/bottom_sheets/add_task_bottom_sheet_view.dart';
import 'package:provider/provider.dart';

class AddTaskView extends StatelessWidget {
  const AddTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(
      builder: (context, viewModel, child) {
        return SizedBox(
            height: 60,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: viewModel.clr3,
                  foregroundColor: viewModel.clr1,
                  shape: const CircleBorder()),
              onPressed: () {
                viewModel.bottonSheetBuilder(
                    const AddTaskBottomSheetView(), context);
              },
              child: const Icon(
                Icons.add,
                size: 50,
              ),
            ));
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:todo_app/view_models/app_view_model.dart';
import 'package:provider/provider.dart';

class HeaderAppView extends StatelessWidget {
  const HeaderAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(
      builder: (context, viewModel, child) {
        return Container(
          decoration: BoxDecoration(
              color: viewModel.clr5,
              borderRadius:
                  const BorderRadius.vertical(bottom: Radius.circular(10))),
          child: const Row(
            children: [
              Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Welcome Back Carl",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),
            ],
          ),
        );
      },
    );
  }
}

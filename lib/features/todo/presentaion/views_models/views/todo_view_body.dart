import 'package:flutter/material.dart';
import 'package:todo_app/features/todo/presentaion/views_models/views/check_box_list_builder.dart';

import 'widgets/custom_todo_float_button.dart';

class TodoViewBody extends StatelessWidget {
  const TodoViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      floatingActionButton: CustomTodoFLoatingActionButton(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: CheckboxListviewBuilder()),
        ],
      ),
    );
  }
}




import 'package:flutter/material.dart';
import 'package:todo_app/core/utils/styles.dart';
import 'package:todo_app/features/todo/presentaion/views_models/model/Todoo.dart';

class TodoContent extends StatefulWidget {
  const TodoContent({super.key, required this.todoModel});
final TodoModel todoModel;
  @override
  State<TodoContent> createState() => _TodoContentState();
}

class _TodoContentState extends State<TodoContent> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CheckboxListTile(
        title: Text(
          widget.todoModel.title,
          style: AppStyles.textStyle23.copyWith(
              decoration: widget.todoModel.value
                  ? TextDecoration.lineThrough
                  : TextDecoration.none),
        ),
        value: widget.todoModel.value,
        onChanged: (bool? value) {
          setState(() {
             widget.todoModel.value = value!;
          });
        },
        controlAffinity: ListTileControlAffinity.leading,
      ),
    );
  }
}
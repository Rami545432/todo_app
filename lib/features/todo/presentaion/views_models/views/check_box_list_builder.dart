import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/features/todo/presentaion/views_models/manger/fetch_check_box/fetch_check_box_cubit.dart';
import 'package:todo_app/features/todo/presentaion/views_models/model/Todoo.dart';
import 'package:todo_app/features/todo/presentaion/views_models/views/widgets/todo_content.dart';
import 'package:todo_app/features/todo/presentaion/views_models/views/widgets/todo_empty_content.dart';

class CheckboxListviewBuilder extends StatelessWidget {
  const CheckboxListviewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchCheckBoxCubit, FetchCheckBoxState>(
      builder: (context, state) {
        List<TodoModel> todos =
            BlocProvider.of<FetchCheckBoxCubit>(context).todos??[];
           if(todos.isEmpty){
            return const TodoEmptycontent();
           }

        if (state is FetchCheckBoxSuccess) {
          return ListView.builder(
            itemCount: todos.length,
            itemBuilder: (context, index) {
              return Dismissible(
                onDismissed: (direction) {
                  BlocProvider.of<FetchCheckBoxCubit>(context)
                      .todos![index]
                      .delete();
                  BlocProvider.of<FetchCheckBoxCubit>(context).fetchCheckBox();
                },
                key: UniqueKey(),
                background: Container(
                  color: Colors.red,
                  child: const Icon(Icons.delete),
                ),
                child:  TodoContent(todoModel: todos[index] ,),
              );
            },
          );
        } else {
          return const Text('data');
        }
      },
    );
  }
}

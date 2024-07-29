import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/core/utils/styles.dart';
import 'package:todo_app/features/todo/presentaion/views_models/manger/fetch_check_box/fetch_check_box_cubit.dart';

import 'todo_view_body.dart';

class TodoView extends StatefulWidget {
  const TodoView({super.key});

  @override
  State<TodoView> createState() => _TodoViewState();
}

class _TodoViewState extends State<TodoView> {
  @override
  void initState() {
    BlocProvider.of<FetchCheckBoxCubit>(context).fetchCheckBox();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Padding(
      padding:const EdgeInsets.only(right: 24, top: 47, left: 24),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('To-do',style: AppStyles.textStyle43,),
        ),
        body: const TodoViewBody(),
      ),
    ));
  }
}
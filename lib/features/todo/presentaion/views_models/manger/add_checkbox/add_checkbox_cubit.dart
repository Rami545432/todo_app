import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:todo_app/features/todo/presentaion/views_models/model/Todoo.dart';

part 'add_checkbox_state.dart';

class AddCheckboxCubit extends Cubit<AddCheckboxState> {
  AddCheckboxCubit() : super(AddCheckboxInitial());
  addCheckBox(TodoModel todo){
    var todoBox=Hive.box<TodoModel>('test_boxx');
    todoBox.add(todo);
    print('amount = ${todoBox.length}');
    emit(AddCheckboxSuccess());
  }

  
}

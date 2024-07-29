import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:todo_app/features/todo/presentaion/views_models/model/Todoo.dart';

part 'fetch_check_box_state.dart';

class FetchCheckBoxCubit extends Cubit<FetchCheckBoxState> {
  FetchCheckBoxCubit() : super(FetchCheckBoxInitial());
  List<TodoModel>? todos;
  fetchCheckBox() {
    var todosBox = Hive.box<TodoModel>('test_boxx');
    todos = todosBox.values.toList();
    emit(
      FetchCheckBoxSuccess(),
    );
  }
}

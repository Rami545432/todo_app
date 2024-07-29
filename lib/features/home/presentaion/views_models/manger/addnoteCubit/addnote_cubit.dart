import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:todo_app/features/home/presentaion/views_models/model/note.dart';

part 'addnote_state.dart';

class AddnoteCubit extends Cubit<AddnoteState> {
  AddnoteCubit() : super(AddnoteInitial());
  Color color=Colors.red;
  addNote(NoteModel note) async {
    note.color=color.value;
   
    emit(
      AddnoteLoading(),
    );
    var notebox = Hive.box<NoteModel>('boxxx');

    await notebox.add(note);
    print(" amount ${notebox.length}");
    emit(
      AddnoteLoaded(),
    );
  }
}

import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:todo_app/features/home/presentaion/views_models/model/note.dart';

part 'fetchnotes_state.dart';

class FetchnotesCubit extends Cubit<FetchnotesState> {
  FetchnotesCubit() : super(FetchnotesInitial());
  List<NoteModel>? notes;
  fetchNotes() {
    var notebox = Hive.box<NoteModel>('boxxx');
    notes = notebox.values.toList();
    emit(FetchnotesLoaded());
  }
}

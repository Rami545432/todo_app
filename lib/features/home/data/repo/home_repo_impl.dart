import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_app/features/home/data/repo/home_repo.dart';
import 'package:todo_app/features/home/presentaion/views_models/model/note.dart';

class HomeRepoImpl implements HomeRepo {
  @override
   addNotes(NoteModel note) async {
    var notebox = Hive.box<NoteModel>('box');
    await notebox.add(note);
    return notebox;
  }
}

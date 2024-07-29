import 'package:flutter/material.dart';
import 'package:todo_app/features/home/presentaion/views_models/model/note.dart';
import 'package:todo_app/features/home/presentaion/views_models/views/widgets/edit_note_body_.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.noteModel});
  final NoteModel noteModel;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: EditNoteViewBody(
          noteModel: noteModel,
        ),
      ),
    );
  }
}

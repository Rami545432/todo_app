import 'package:flutter/material.dart';
import 'package:todo_app/features/home/presentaion/views_models/model/note.dart';
import 'package:todo_app/features/home/presentaion/views_models/views/widgets/sample_note_body.dart';

class SampleNoteView extends StatelessWidget {
  const SampleNoteView({super.key, required this.noteModel});
final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: SampleNoteBody(noteModel: noteModel,),
      ),
    );
  }
}

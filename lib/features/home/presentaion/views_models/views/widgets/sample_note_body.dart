import 'package:flutter/material.dart';
import 'package:todo_app/core/utils/styles.dart';
import 'package:todo_app/features/home/presentaion/views_models/model/note.dart';
import 'package:todo_app/features/home/presentaion/views_models/views/widgets/sample_note_app_bar.dart';

class SampleNoteBody extends StatefulWidget {
  const SampleNoteBody({super.key, required this.noteModel});
  final NoteModel noteModel;

  @override
  State<SampleNoteBody> createState() => _SampleNoteBodyState();
}

class _SampleNoteBodyState extends State<SampleNoteBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 23, right: 27, top: 51),
      child: ListView(
        children: [
          SampleNoteAppBar(
            noteModel: widget.noteModel,
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            widget.noteModel.title,
            style: AppStyles.textStyle35,
            maxLines: null,
          ),
          Text(
            widget.noteModel.content,
            style: AppStyles.textStyle23,
            overflow: null,
          )
        ],
      ),
    );
  }
}

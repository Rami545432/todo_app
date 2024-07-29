import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/core/utils/go_router.dart';
import 'package:todo_app/core/utils/styles.dart';
import 'package:todo_app/features/home/presentaion/views_models/model/note.dart';

class HomeTextContent extends StatelessWidget {
  const HomeTextContent({super.key, required this.noteModel});
  final NoteModel noteModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kSampleNoteView, extra: noteModel);
      },
      child: Container(
        width: 500,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(noteModel.color),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 22),
          child: Text(
            noteModel.title,
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
            style: AppStyles.textStyle25,
          ),
        ),
      ),
    );
  }
}

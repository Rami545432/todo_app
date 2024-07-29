import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/core/utils/go_router.dart';
import 'package:todo_app/features/home/presentaion/views_models/model/note.dart';
import 'package:todo_app/features/home/presentaion/views_models/views/custom_Icon_button.dart';

class SampleNoteAppBar extends StatelessWidget {
  const SampleNoteAppBar({
    super.key, required this.noteModel,
  });
final NoteModel noteModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomIconButton(
          icon: Icons.arrow_back_ios_new,
          onPressed: () {
            GoRouter.of(context).pop();
          },
        ),
        const SizedBox(
          width: 150,
        ),
        CustomIconButton(icon: Icons.edit_outlined, onPressed: () {
          GoRouter.of(context).push(AppRouter.kEditNoteView,extra: noteModel);
          
        }),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/core/utils/styles.dart';
import 'package:todo_app/features/home/presentaion/views_models/manger/fetchnotes/fetchnotes_cubit.dart';
import 'package:todo_app/features/home/presentaion/views_models/model/note.dart';
import 'package:todo_app/features/home/presentaion/views_models/views/add_note_app_bar.dart';
import 'package:todo_app/features/home/presentaion/views_models/views/custom_text_field.dart';
import 'package:todo_app/features/home/presentaion/views_models/views/edit_color_list_builder.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({
    super.key,
    required this.noteModel,
  });
  final NoteModel noteModel;

  @override
  State<EditNoteViewBody> createState() => _AddNoteViewBodyState();
}

class _AddNoteViewBodyState extends State<EditNoteViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  String? title, content;
  late TextEditingController _titleController;
  late TextEditingController _contentController;
  @override
  void initState() {
    _titleController = TextEditingController(text: widget.noteModel.title);
    _contentController = TextEditingController(text: widget.noteModel.content);

    super.initState();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _contentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.only(left: 23, right: 27, top: 51),
        child: ListView(
          children: [
            AddNoteAppBar(
              onPressed: () {
                formKey.currentState!.save();
                widget.noteModel.title = title ?? widget.noteModel.title;
                widget.noteModel.content = content ?? widget.noteModel.content;

                BlocProvider.of<FetchnotesCubit>(context).fetchNotes();
                GoRouter.of(context).push('/');
              },
            ),
            const SizedBox(
              height: 40,
            ),
            CustomTextField(
              color: Colors.transparent,
              hintText: 'Title',
              style: AppStyles.textStyle35,
              hintStyle: AppStyles.textStyle48,
              controller: _titleController,
              onSaved: (data) {
                title = data;
              },
            ),
            CustomTextField(
              color: Colors.transparent,
              onSaved: (data) {
                content = data;
              },
              hintText: 'Say Something',
              style: AppStyles.textStyle23,
              hintStyle: AppStyles.textStyle23,
              controller: _contentController,
            ),
            EditColorListBuilder(
              noteModel: widget.noteModel,
            )
          ],
        ),
      ),
    );
  }
}

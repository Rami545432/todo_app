import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/core/utils/styles.dart';
import 'package:todo_app/features/home/presentaion/views_models/manger/addnoteCubit/addnote_cubit.dart';
import 'package:todo_app/features/home/presentaion/views_models/manger/fetchnotes/fetchnotes_cubit.dart';
import 'package:todo_app/features/home/presentaion/views_models/model/note.dart';
import 'package:todo_app/features/home/presentaion/views_models/views/add_note_app_bar.dart';
import 'package:todo_app/features/home/presentaion/views_models/views/custom_text_field.dart';
import 'package:todo_app/features/home/presentaion/views_models/views/widgets/add_color_list_builder.dart';

class AddNoteViewBody extends StatefulWidget {
  const AddNoteViewBody({
    super.key, 
  });

  @override
  State<AddNoteViewBody> createState() => _AddNoteViewBodyState();
}

class _AddNoteViewBodyState extends State<AddNoteViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  String? title, content;

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
                var addNote = NoteModel(
                  content: content!,
                  title: title!,
                  color: Colors.red.value
                );
                BlocProvider.of<AddnoteCubit>(context).addNote(addNote);
                BlocProvider.of<FetchnotesCubit>(context).fetchNotes();
                GoRouter.of(context).pop();
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
            ),
            const AddColorListViewBuilder()
          ],
        ),
      ),
    );
  }
}

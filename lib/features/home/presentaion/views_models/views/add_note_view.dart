import 'package:flutter/material.dart';
import 'package:todo_app/features/home/presentaion/views_models/views/add_note_view_body.dart';

class AddNoteView extends StatelessWidget {
  const AddNoteView({super.key,});
 
  @override
  Widget build(BuildContext context) {
    return  const SafeArea(
      child: Scaffold(
        body:  AddNoteViewBody(),
      ),
    );
  }
}


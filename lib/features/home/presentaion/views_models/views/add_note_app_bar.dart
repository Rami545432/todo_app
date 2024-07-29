import 'package:flutter/material.dart';
import 'package:todo_app/core/utils/functions/custom_show_dialoge.dart';
import 'package:todo_app/features/home/presentaion/views_models/views/custom_Icon_button.dart';

class AddNoteAppBar extends StatefulWidget {
  const AddNoteAppBar({
    super.key,
    this.onPressed,
  });
  final void Function()? onPressed;

  @override
  State<AddNoteAppBar> createState() => _AddNoteAppBarState();
}

class _AddNoteAppBarState extends State<AddNoteAppBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomIconButton(
          icon: Icons.arrow_back_ios_new,
          onPressed: () {
            customShowBackDialog(
                context, 'Going Back will discard your note are you sure ?');
          },
        ),
        const SizedBox(
          width: 150,
        ),
        Builder(
          builder: (context) {
            return CustomIconButton(
              icon: Icons.visibility_outlined,
              onPressed: () {

              },
            );
          }
        ),
        const SizedBox(
          width: 21,
        ),
        CustomIconButton(icon: Icons.save, onPressed: widget.onPressed),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:todo_app/core/utils/color_list.dart';
import 'package:todo_app/core/utils/constant.dart';
import 'package:todo_app/features/home/presentaion/views_models/model/note.dart';

class EditColorListBuilder extends StatefulWidget {
  const EditColorListBuilder({
    super.key,
    required this.noteModel,
  });
  final NoteModel noteModel;

  @override
  State<EditColorListBuilder> createState() => _EditColorListViewBuilderState();
}

class _EditColorListViewBuilderState extends State<EditColorListBuilder> {
  late int currentindex;
  @override
  void initState() {
    currentindex = selcetedColors.indexOf(
      Color(widget.noteModel.color),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: selcetedColors.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 7),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    currentindex = index;
                    widget.noteModel.color = selcetedColors[index].value;
                    widget.noteModel.save();
                  });
                },
                child: Coloritem(
                  isSelected: currentindex == index,
                  color: selcetedColors[index],
                ),
              ),
            );
          }),
    );
  }
}

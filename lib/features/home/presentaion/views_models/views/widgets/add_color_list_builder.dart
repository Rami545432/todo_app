import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/core/utils/color_list.dart';
import 'package:todo_app/core/utils/constant.dart';
import 'package:todo_app/features/home/presentaion/views_models/manger/addnoteCubit/addnote_cubit.dart';

class AddColorListViewBuilder extends StatefulWidget {
  const AddColorListViewBuilder({super.key,});
  

  @override
  State<AddColorListViewBuilder> createState() => _AddColorListViewBuilderState();
}

class _AddColorListViewBuilderState extends State<AddColorListViewBuilder> {
  int currentindex=0;
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
                    currentindex=index; 
                    BlocProvider.of<AddnoteCubit>(context).color=selcetedColors[index];
                  });
                },
                child: Coloritem(
                  isSelected:currentindex==index,
                  
                  color: selcetedColors[index],
                ),
              ),
            );
          }),
    );
  }
}

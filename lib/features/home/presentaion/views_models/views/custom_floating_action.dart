import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/core/utils/go_router.dart';

class CustomFLoatingActionButton extends StatelessWidget {
  const CustomFLoatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right:10,bottom: 15 ),
      child: SizedBox(
        height: 70,
        width: 70,
        child: FloatingActionButton(
         backgroundColor: const Color(0xff3B3B3B),
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kAddNoteView);
          },
          shape: const CircleBorder(
           
          ),
          child:  const Icon(Icons.add,size: 48,color: Colors.white,),
        ),
      ),
    );
  }
}

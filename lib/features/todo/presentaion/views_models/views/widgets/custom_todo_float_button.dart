import 'package:flutter/material.dart';
import 'package:todo_app/features/todo/presentaion/views_models/views/widgets/todo_floating_componets.dart';

class CustomTodoFLoatingActionButton extends StatelessWidget {
  const CustomTodoFLoatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, bottom: 15),
      child: SizedBox(
        height: 70,
        width: 70,
        child: FloatingActionButton(
          backgroundColor: const Color(0xff3B3B3B),
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return AnimatedPadding(
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom,
                    ),
                    duration: const Duration(milliseconds: 300),
                    child: const BottomComponet(),
                  );
                });
          },
          shape: const CircleBorder(),
          child: const Icon(
            Icons.add,
            size: 48,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:todo_app/core/utils/styles.dart';
import 'package:todo_app/features/home/presentaion/views_models/views/custom_Icon_button.dart';

class CustomappBar extends StatelessWidget {
  const CustomappBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text(
          'Notes',
          style: AppStyles.textStyle43,
        ),
        const SizedBox(
          width: 100,
        ),
        CustomIconButton(
          onPressed: () {},
          icon: Icons.search,
        ),
        const SizedBox(
          width: 29,
        ),
        CustomIconButton(
          icon: Icons.info_outline,
          onPressed: () {
            
          },
        ),
      ],
    );
  }
}

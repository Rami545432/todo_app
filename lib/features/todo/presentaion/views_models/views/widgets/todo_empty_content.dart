import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo_app/core/utils/styles.dart';

class TodoEmptycontent extends StatelessWidget {
  const TodoEmptycontent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: SvgPicture.asset(
            'assets/images/undraw_to_do_re_jaef.svg',
            height: 120,
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        const Text(
          "No to To-dos !",
          style: AppStyles.textStyle20,
        ),
      ],
    );
  }
}

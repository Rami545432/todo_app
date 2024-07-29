import 'package:flutter/material.dart';
import 'package:todo_app/core/utils/styles.dart';

class HomeEmptyContent extends StatelessWidget {
  const HomeEmptyContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/rafiki.png'),
        const SizedBox(
          height: 6.77,
        ),
        const Text(
          "Create your First note !",
          style: AppStyles.textStyle20,
        ),
      ],
    );
  }
}



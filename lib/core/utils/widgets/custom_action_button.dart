import 'package:flutter/material.dart';
import 'package:todo_app/core/utils/styles.dart';

class CustomActionButton extends StatelessWidget {
  const CustomActionButton({
    super.key,
    required this.text,
    required this.color, this.onPressed,
   
  });
  final String text;
  final Color color;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        height: 39,
        width: 100,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(5), color: color),
        child: Center(
          child: Text(
            text,
            style: AppStyles.textStyle18,
          ),
        ),
      ),
    );
  }
}

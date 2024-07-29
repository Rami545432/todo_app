import 'package:flutter/material.dart';

class Coloritem extends StatelessWidget {
  const Coloritem({
    super.key,
    this.color, required this.isSelected,
  });
  final Color? color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        isSelected
            ? CircleAvatar(
                radius: 40,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  backgroundColor: color,
                  radius: 38,
                ),
              )
            : CircleAvatar(
                backgroundColor: color,
                radius: 38,
              ),
      ],
    );
  }
}


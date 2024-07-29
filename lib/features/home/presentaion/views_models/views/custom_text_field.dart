import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hintText,
      this.strutStyle,
      required this.style,
      required this.hintStyle,
      this.onSaved,
      this.controller, required this.color});
  final String hintText;
  final StrutStyle? strutStyle;
  final TextStyle style, hintStyle;
  final void Function(String?)? onSaved;
  final TextEditingController? controller;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.text,
      controller: controller,
      onSaved: onSaved,
      strutStyle: strutStyle,
      style: style,
      maxLines: null,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: hintStyle,
        hintMaxLines: 10,
        focusedBorder: selecitingBorders(color),
        enabledBorder: selecitingBorders(color),
      ),
    );
  }

  OutlineInputBorder selecitingBorders(Color color) {
    return  OutlineInputBorder(
        borderRadius:const BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(color:color));
  }
}

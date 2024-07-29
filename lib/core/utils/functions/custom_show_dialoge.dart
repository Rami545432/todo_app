import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/core/utils/styles.dart';
import 'package:todo_app/core/utils/widgets/custom_action_button.dart';

customShowSaveDialog(
  BuildContext context,
  String? text,
   final Function()? onPressed

) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          icon: const Icon(Icons.info_sharp),
          content: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 34),
            child: Text(
              text ?? '',
              textAlign: TextAlign.center,
              style: AppStyles.textStyle23,
            ),
          ),
          contentPadding: const EdgeInsets.only(top: 25, left: 0),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomActionButton(
                    text: "Discard",
                    color: Colors.red,
                    onPressed: () {
                      GoRouter.of(context).pop();
                    },
                  ),
                  CustomActionButton(
                    text: 'Save',
                    color: Colors.green,
                    onPressed:onPressed
                  ),
                ],
              ),
            ),
          ],
          buttonPadding: const EdgeInsets.only(top: 24, bottom: 37),
        );
      });
}

Future<dynamic> customShowBackDialog(
  BuildContext context,
  String? text,
) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          icon: const Icon(Icons.info_sharp),
          content: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 34),
            child: Text(
              text ?? '',
              textAlign: TextAlign.center,
              style: AppStyles.textStyle23,
            ),
          ),
          contentPadding: const EdgeInsets.only(top: 25, left: 0),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomActionButton(
                    text: "Discard",
                    color: Colors.red,
                    onPressed: () {
                      GoRouter.of(context).push('/');
                    },
                  ),
                  CustomActionButton(
                    text: 'Keep',
                    color: Colors.green,
                    onPressed: () {
                      GoRouter.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          ],
          buttonPadding: const EdgeInsets.only(top: 24, bottom: 37),
        );
      });
}

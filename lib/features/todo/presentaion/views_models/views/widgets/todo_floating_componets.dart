import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/core/utils/styles.dart';
import 'package:todo_app/features/home/presentaion/views_models/views/custom_text_field.dart';
import 'package:todo_app/features/todo/presentaion/views_models/manger/add_checkbox/add_checkbox_cubit.dart';
import 'package:todo_app/features/todo/presentaion/views_models/manger/fetch_check_box/fetch_check_box_cubit.dart';
import 'package:todo_app/features/todo/presentaion/views_models/model/Todoo.dart';

class BottomComponet extends StatefulWidget {
  const BottomComponet({
    super.key,
  });

  @override
  State<BottomComponet> createState() => _BottomComponetState();
}

class _BottomComponetState extends State<BottomComponet> {
  String? text;
  GlobalKey<FormState> keyForm = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: keyForm,
      child: SizedBox(
        height: 200,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        GoRouter.of(context).pop();
                      },
                      child: Text(
                        'Cancel',
                        style: AppStyles.textStyle18.copyWith(
                          color: Colors.orange,
                        ),
                      ),
                    ),
                    const Text(
                      'New To-DO',
                      style: AppStyles.textStyle18,
                    ),
                    TextButton(
                      onPressed: () {
                        keyForm.currentState!.save();
                        var addCheckBox = TodoModel(title: text!,value:false );
                        BlocProvider.of<AddCheckboxCubit>(context)
                            .addCheckBox(addCheckBox);
                        BlocProvider.of<FetchCheckBoxCubit>(context)
                            .fetchCheckBox();

                        GoRouter.of(context).pop();
                      },
                      child: Text('Save',
                          style: AppStyles.textStyle18.copyWith(
                            color: Colors.orange,
                          )),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              CustomTextField(
                  onSaved: (data) {
                    text = data;
                  },
                  color: Colors.white,
                  hintText: 'New to-do',
                  style: AppStyles.textStyle23,
                  hintStyle: AppStyles.textStyle18.copyWith(
                      fontWeight: FontWeight.w100, color: Colors.white38)),
            ],
          ),
        ),
      ),
    );
  }
}

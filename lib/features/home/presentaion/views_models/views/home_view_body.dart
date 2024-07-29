import 'package:flutter/material.dart';
import 'package:todo_app/features/home/presentaion/views_models/views/custom_appBar.dart';
import 'package:todo_app/features/home/presentaion/views_models/views/custom_floating_action.dart';
import 'package:todo_app/features/home/presentaion/views_models/views/home_content_list_view_builder.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        floatingActionButton: CustomFLoatingActionButton(),
        body: Padding(
          padding: EdgeInsets.only(right: 24, top: 47, left: 24),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    CustomappBar(),
                    SizedBox(
                      height: 90,
                    ),
                  ],
                ),
              ),
              HomeContentListViewBuilder(),
              SliverToBoxAdapter(
                // child: Checkbox(value: true, onChanged: true),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

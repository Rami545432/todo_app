import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/features/home/presentaion/views_models/manger/fetchnotes/fetchnotes_cubit.dart';
import 'package:todo_app/features/home/presentaion/views_models/views/home_empty_content.dart';
import 'package:todo_app/features/home/presentaion/views_models/views/home_text_content.dart';

import '../model/note.dart';

class HomeContentListViewBuilder extends StatelessWidget {
  const HomeContentListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchnotesCubit, FetchnotesState>(
        builder: (context, state) {
      List<NoteModel> notes =
          BlocProvider.of<FetchnotesCubit>(context).notes ?? [];
          if(notes.isEmpty){
            return const SliverToBoxAdapter(child: HomeEmptyContent());
          }

      if (state is FetchnotesLoaded) {
        return SliverList.builder(
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 24),
                child: Dismissible(
                  background: Container(
                    color: Colors.red,
                    child: const Icon(Icons.delete),
                  ),
                  key: UniqueKey(),
                  onDismissed: (direction) {
                    BlocProvider.of<FetchnotesCubit>(context)
                        .notes![index]
                        .delete();
                    BlocProvider.of<FetchnotesCubit>(context).fetchNotes();
                  },
                  child: HomeTextContent(
                    noteModel: notes[index],
                  ),
                ),
              );
            });
      } else {
        return const HomeEmptyContent();
      }
    });
  }
}

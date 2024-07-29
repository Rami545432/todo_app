import 'package:go_router/go_router.dart';
import 'package:todo_app/core/utils/widgets/navigator_bottom.dart';
import 'package:todo_app/features/home/presentaion/views_models/model/note.dart';
import 'package:todo_app/features/home/presentaion/views_models/views/add_note_view.dart';
import 'package:todo_app/features/home/presentaion/views_models/views/widgets/edit_note_view.dart';
import 'package:todo_app/features/home/presentaion/views_models/views/widgets/sample_note_view.dart';

abstract class AppRouter {
  static const String kAddNoteView = '/addNoteView';
  static const String kSampleNoteView = '/sampleNoteView';
  static const String kEditNoteView = '/editNoteView';

  static final GoRouter router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const CustomNavigation(),
    ),
    GoRoute(
      path: kAddNoteView,
      builder: (context, state) => const AddNoteView(),
    ),
    GoRoute(
      path: kSampleNoteView,
      builder: (context, state) => SampleNoteView(
        noteModel: state.extra as NoteModel,
      ),
    ),
    GoRoute(
      path: kEditNoteView,
      builder: (context, state) => EditNoteView(
        noteModel: state.extra as NoteModel,
      ),
    ),
  ]);
}

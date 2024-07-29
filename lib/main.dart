import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_app/core/utils/go_router.dart';
import 'package:todo_app/features/home/presentaion/views_models/manger/addnoteCubit/addnote_cubit.dart';
import 'package:todo_app/features/home/presentaion/views_models/manger/fetchnotes/fetchnotes_cubit.dart';
import 'package:todo_app/features/home/presentaion/views_models/model/note.dart';
import 'package:todo_app/features/todo/presentaion/views_models/manger/add_checkbox/add_checkbox_cubit.dart';
import 'package:todo_app/features/todo/presentaion/views_models/manger/fetch_check_box/fetch_check_box_cubit.dart';
import 'package:todo_app/features/todo/presentaion/views_models/model/Todoo.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  Hive.registerAdapter(TodoModelAdapter());
  await Hive.openBox<NoteModel>('boxxx');
  await Hive.openBox<TodoModel>('test_boxx');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddnoteCubit(),
        ),
        BlocProvider(
          create: (context) => FetchnotesCubit(),
        ),
        BlocProvider(
          create: (context) => FetchCheckBoxCubit(),
        ),
         BlocProvider(
          create: (context) => AddCheckboxCubit(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            textTheme: GoogleFonts.nunitoTextTheme(ThemeData.dark().textTheme)),
      ),
    );
  }
}

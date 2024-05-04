import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app_tr2/constants.dart';
import 'package:note_app_tr2/cubits/cubit/add_note_cubit.dart';
import 'package:note_app_tr2/models/note_model.dart';
import 'package:note_app_tr2/views/notes_view.dart';

void main() async {
await Hive.initFlutter();
await Hive.openBox(kNoteBox);
Hive.registerAdapter(NoteModelAdapter());
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNoteCubit(),
        )
      ],
      child: MaterialApp(
        theme: ThemeData(
            brightness: Brightness.dark,
            scaffoldBackgroundColor: Colors.blueGrey.shade700),
        home: const NotesView(),
      ),
    );
  }
}

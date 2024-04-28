import 'package:flutter/material.dart';
import 'package:note_app_tr2/views/notes_view.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: Colors.blueGrey.shade700),
      home: const NotesView(),
    );
  }
}

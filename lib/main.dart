import 'package:flutter/material.dart';
import 'package:note_app_tr2/views/notes_view.dart';


void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData.dark(),
      home: NotesView(),
    );
  }
}
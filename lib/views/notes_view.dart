import 'package:flutter/material.dart';

import 'package:note_app_tr2/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blueGrey.withOpacity(.5),
        
        child: const Icon(
          Icons.add,
          color: Colors.black,
          size: 28,
        ),
      ),
      body: const NotesViewBady(),
    );
  }
}

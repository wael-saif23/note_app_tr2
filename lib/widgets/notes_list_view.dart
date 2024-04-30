import 'package:flutter/material.dart';
import 'package:note_app_tr2/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) => Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.015),
          child: const NoteItem(),
        ),
      ),
    );
  }
}

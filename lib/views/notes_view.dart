import 'package:flutter/material.dart';
import 'package:note_app_tr2/widgets/add_note_buttom_sheete.dart';
import 'package:note_app_tr2/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            backgroundColor:
                const Color.fromARGB(221, 33, 38, 43).withOpacity(.9),
            context: context,
            builder: (context) => const AddNoteButtomSheet(),
          );
        },
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

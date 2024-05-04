import 'package:flutter/material.dart';
import 'package:note_app_tr2/widgets/add_note_form.dart';



class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 32, horizontal: 24),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

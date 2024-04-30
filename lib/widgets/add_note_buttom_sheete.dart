import 'package:flutter/material.dart';

import 'package:note_app_tr2/widgets/custom_button.dart';

import 'package:note_app_tr2/widgets/custom_text_field.dart';

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

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final _formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: autovalidateMode,
      child: Column(children: [
        CustomFormTextField(
          onSaved: (value) {
            title = value;
          },
          hintLabelText: "Title",
        ),
        const SizedBox(
          height: 24,
        ),
        CustomFormTextField(
          onSaved: (value) {
            subtitle = value;
          },
          hintLabelText: "Content",
          maxLines: 5,
        ),
        const SizedBox(
          height: 48,
        ),
        CustomButton(
          onTap: () {
            if (_formKey.currentState!.validate()) {
              _formKey.currentState!.save();
            } else {
              autovalidateMode = AutovalidateMode.always;
              setState(() {});
            }
          },
          text: "Add Note",
        ),
      ]),
    );
  }
}

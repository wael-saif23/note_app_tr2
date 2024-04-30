import 'package:flutter/material.dart';

import 'package:note_app_tr2/widgets/custom_app_bar.dart';

import 'package:note_app_tr2/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(children: [
        SafeArea(
            child: CustomAppBAr(
          text: 'Edit Notes',
          icon: Icons.check,
        )),
        SizedBox(
          height: 24,
        ),
        CustomTextField(
          hintLabelText: "Title",
        ),
        SizedBox(
          height: 24,
        ),
        CustomTextField(
          hintLabelText: "Content",
          maxLines: 5,
        ),
        SizedBox(
          height: 48,
        ),
      ]),
    );
  }
}

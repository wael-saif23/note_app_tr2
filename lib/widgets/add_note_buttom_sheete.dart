import 'package:flutter/material.dart';

import 'package:note_app_tr2/widgets/custom_text_field.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 32, horizontal: 24),
      child: Column(children: [
        CustomTextField(hintLabelText: "Title",),
        SizedBox(height: 24,),
        CustomTextField(hintLabelText: "Content", maxLines: 5,),
      ]),
    );
  }
}

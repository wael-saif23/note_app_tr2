import 'package:flutter/material.dart';
import 'package:note_app_tr2/constants.dart';

class CustomFormTextField extends StatelessWidget {
  const CustomFormTextField(
      {super.key, this.hintLabelText = "", this.maxLines = 1, this.onSaved});
  final String hintLabelText;
  final int maxLines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "This field is required";
        } else {
          return null;
        }
      },
      maxLines: maxLines,
      cursorColor: kprimaryColor.withOpacity(.9),
      decoration: InputDecoration(
        labelText: hintLabelText,
        labelStyle: TextStyle(
          color: kprimaryColor.withOpacity(.9),
        ),
        hintText: hintLabelText,
        border: buildBorder(),
        focusedBorder:
            buildBorder(color: kprimaryColor.withOpacity(.9), width: 2),
        enabledBorder: buildBorder(),
      ),
    );
  }

  // buildBorder method >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
  OutlineInputBorder buildBorder(
      {Color color = Colors.white, double width = 1}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        width: width,
        color: color,
      ),
    );
  }
}

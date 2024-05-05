import 'package:flutter/material.dart';
import 'package:note_app_tr2/constants.dart';

class CustomFormTextField extends StatelessWidget {
  const CustomFormTextField(
      {super.key,
      this.hintText = "",
      this.maxLines = 1,
      this.onSaved,
      this.onChanged,
      required this.labelText});
  final String hintText;
  final String labelText;
  final int maxLines;
  final void Function(String?)? onSaved;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
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
        labelText: labelText,
        labelStyle: TextStyle(
          color: kprimaryColor.withOpacity(.9),
        ),
        hintText: hintText,
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

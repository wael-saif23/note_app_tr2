import 'package:flutter/material.dart';
import 'package:note_app_tr2/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.hintLabelText = "" , this.maxLines = 1});
final String hintLabelText;
final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
          cursorColor: KprimaryColor.withOpacity(.9),
          decoration: InputDecoration(
            labelText:  hintLabelText,
            labelStyle: TextStyle(
              color: KprimaryColor.withOpacity(.9),
            ),
            hintText: hintLabelText,
            border: buildBorder(),
            focusedBorder:
                buildBorder(color: KprimaryColor.withOpacity(.9), width: 2),
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
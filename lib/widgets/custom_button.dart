import 'package:flutter/material.dart';
import 'package:note_app_tr2/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 48,
        decoration: BoxDecoration(
          color: KprimaryColor.withOpacity(.8),
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Center(
          child: Text(
            "Add Note",
            style: TextStyle(
              color: Colors.black54,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ));
  }
}

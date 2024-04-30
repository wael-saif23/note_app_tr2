import 'package:flutter/material.dart';
import 'package:note_app_tr2/widgets/custom_Icon.dart';

class CustomAppBAr extends StatelessWidget {
  const CustomAppBAr({super.key, required this.text, required this.icon});
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(
        text,
        style: const TextStyle(
          fontSize: 36,
        ),
      ),
      const Spacer(),
       CustomIcon(icon: icon,),
    ]);
  }
}

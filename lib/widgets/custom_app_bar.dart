import 'package:flutter/material.dart';
import 'package:note_app_tr2/widgets/custom_search_Icon.dart';

class CustomAppBAr extends StatelessWidget {
  const CustomAppBAr({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(children: [
      Text(
        'Notes',
        style: TextStyle(
          fontSize: 36,
        ),
      ),
      Spacer(),
      CustomSearchIcon(),
    ]);
  }
}



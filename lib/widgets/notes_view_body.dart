import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:note_app_tr2/widgets/custom_app_bar.dart';

import 'package:note_app_tr2/widgets/notes_list_view.dart';

class NotesViewBady extends StatelessWidget {
  const NotesViewBady({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SafeArea(child: CustomAppBAr()),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app_tr2/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app_tr2/widgets/custom_app_bar.dart';

import 'package:note_app_tr2/widgets/notes_list_view.dart';

class NotesViewBady extends StatefulWidget {
  const NotesViewBady({super.key});

  @override
  State<NotesViewBady> createState() => _NotesViewBadyState();

}

class _NotesViewBadyState extends State<NotesViewBady> {
    @override
  void initState() {
    super.initState();
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
  }
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 16, left: 24, right: 24),
      child: Column(
        children: [
          SafeArea(
              child: CustomAppBAr(
            text: 'Notes',
            icon: Icons.search,
          )),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}

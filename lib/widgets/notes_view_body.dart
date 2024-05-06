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
    return Padding(
        padding: const EdgeInsets.only(top: 16, left: 24, right: 24),
        child: BlocBuilder<NotesCubit ,NotesState>(
          
          builder: (context, state) {
           
            return Column(
              children: [
                SafeArea(
                    child: CustomAppBAr(
                  onTap: () {
                    // المشكلة لم تحل وهي انه لا يتم عمل ريلود للصفحة بعد الحذف 
                 BlocProvider.of<NotesCubit>(context).notesBox.clear();
                      BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                      setState(() {});
                  },
                  text: 'Notes',
                  icon: Icons.delete,
                )),
                const Expanded(child: NotesListView()),
              ],
            );
          },
        ));
  }
}

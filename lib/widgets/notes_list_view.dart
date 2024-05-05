import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app_tr2/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app_tr2/models/note_model.dart';
import 'package:note_app_tr2/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(builder: (context, state) {
      List<NoteModel>notes= BlocProvider.of<NotesCubit>(context).notes!; 
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: ListView.builder(
          itemCount: notes.length,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * 0.015),
            child:  NoteItem(note: notes[index],),
          ),
        ),
      );
    });
  }
}

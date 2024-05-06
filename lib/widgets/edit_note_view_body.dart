import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app_tr2/constants.dart';
import 'package:note_app_tr2/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app_tr2/models/note_model.dart';
import 'package:note_app_tr2/widgets/colors_items.dart';

import 'package:note_app_tr2/widgets/custom_app_bar.dart';

import 'package:note_app_tr2/widgets/custom_text_field.dart';
import 'package:note_app_tr2/widgets/edit_note_color_list.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 24, right: 24),
      child: Column(children: [
        SafeArea(
            child: CustomAppBAr(
          onTap: () {
            widget.note.title = title ?? widget.note.title;
            widget.note.content = content ?? widget.note.content;
            widget.note.save();
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            Navigator.pop(context);
          },
          text: 'Edit Note',
          icon: Icons.check,
        )),
        const SizedBox(
          height: 24,
        ),
        CustomFormTextField(
          onChanged: (value) {
            title = value;
          },
          labelText: "title",
          hintText: widget.note.title,
        ),
        const SizedBox(
          height: 24,
        ),
        CustomFormTextField(
          onChanged: (value) {
            content = value;
          },
          labelText: "content",
          hintText: widget.note.content,
          maxLines: 5,
        ),
        const SizedBox(
          height: 48,
        ),
        EditNoteColorList(
          note: widget.note,
        ),
      ]),
    );
  }
}

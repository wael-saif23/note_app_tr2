import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app_tr2/cubits/cubit/add_note_cubit.dart';
import 'package:note_app_tr2/models/note_model.dart';
import 'package:note_app_tr2/widgets/custom_button.dart';
import 'package:note_app_tr2/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final _formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: autovalidateMode,
      child: Column(children: [
        CustomFormTextField(
          onSaved: (value) {
            title = value;
          },
          hintLabelText: "Title",
        ),
        const SizedBox(
          height: 24,
        ),
        CustomFormTextField(
          onSaved: (value) {
            content = value;
          },
          hintLabelText: "Content",
          maxLines: 5,
        ),
        const SizedBox(
          height: 48,
        ),
        BlocBuilder<AddNoteCubit, AddNoteState>(
          builder: (context, state) {
            return CustomButton(
              islooding: state is AddNoteLoading ? true : false,
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  NoteModel note = NoteModel(
                    title: title!,
                    content: content!,
                    color: const Color.fromARGB(255, 56, 118, 145).value,
                    date: DateTime.now().toString(),
                  );
                  BlocProvider.of<AddNoteCubit>(context).addNote(note);
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
              text: "Add Note",
            );
          },
        ),
        const SizedBox(
          height: 24,
        )
      ]),
    );
  }
}

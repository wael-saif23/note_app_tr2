import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note_app_tr2/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app_tr2/models/note_model.dart';
import 'package:note_app_tr2/widgets/colors_items.dart';
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
          labelText: "Title",
          hintText: "Title",
        ),
        const SizedBox(
          height: 24,
        ),
        CustomFormTextField(
          onSaved: (value) {
            content = value;
          },
          labelText: "Content",
          hintText: "Content",
          maxLines: 5,
        ),
         const SizedBox(
          height: 16,
        ),
        const ColorsItemList(),
        const SizedBox(
          height: 16,
        ),
        BlocBuilder<AddNoteCubit, AddNoteState>(
          builder: (context, state) {
            return CustomButton(
              islooding: state is AddNoteLoading ? true : false,
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  var curantDate = DateTime.now();
                  var formattedDate =
                      DateFormat('dd-MM-yyyy').format(curantDate);
                  NoteModel note = NoteModel(
                    title: title!,
                    content: content!,
                    color: const Color.fromARGB(255, 56, 118, 145).value,
                    date: formattedDate,
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

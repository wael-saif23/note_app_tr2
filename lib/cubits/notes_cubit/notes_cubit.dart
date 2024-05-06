import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:meta/meta.dart';
import 'package:note_app_tr2/constants.dart';
import 'package:note_app_tr2/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notes;
   var notesBox = Hive.box<NoteModel>(kNoteBox);
  fetchAllNotes() {
   
    notes = notesBox.values.toList();

    emit(NotesSuccess());
  }

  deletAllNotes() {
    var notesBox = Hive.box<NoteModel>(kNoteBox);
    notesBox.clear();

    fetchAllNotes();
  }
}

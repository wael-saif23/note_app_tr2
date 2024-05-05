import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:note_app_tr2/models/note_model.dart';
import 'package:hive/hive.dart';
import 'package:note_app_tr2/constants.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  addNote(NoteModel note)  {
    emit(AddNoteLoading());
   
    try {
      var notesBox = Hive.box<NoteModel>(kNoteBox);
     
      notesBox.add(note);
           emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:mynoteapp/constats.dart';
import 'package:mynoteapp/models/note_model.dart';

part 'notescubit_state.dart';

class NotesCubit extends Cubit<NotescubitState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNotes() async {
    emit(NotesLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesbox);
      List<NoteModel> notes = notesBox.values.toList();
      emit(NotesSuccess(notes));
    } catch (e) {
      emit(NotesFailuer(e.toString()));
    }
  }
}

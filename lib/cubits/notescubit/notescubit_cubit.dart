import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:mynoteapp/constats.dart';
import 'package:mynoteapp/models/note_model.dart';

part 'notescubit_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? notes;
  fetchAllNotes() async {
    var notesBox = Hive.box<NoteModel>(kNotesbox);
    notes = notesBox.values.toList();
  }
}

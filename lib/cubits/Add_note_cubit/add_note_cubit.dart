// ignore_for_file: empty_catches

import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:mynoteapp/constats.dart';
import 'package:mynoteapp/models/note_model.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubitCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubitCubit() : super(AddNoteCubitInitial());

  addNote(NoteModel note) async {
    emit(AddNoteCubitLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesbox);
      emit(AddNoteCubitSuccess());
      await notesBox.add(note);
    } catch (e) {
      AddNoteCubitFailure(e.toString());
    }
  }
}

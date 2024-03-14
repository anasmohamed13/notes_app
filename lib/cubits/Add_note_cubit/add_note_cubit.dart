// ignore_for_file: empty_catches

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:mynoteapp/constats.dart';
import 'package:mynoteapp/models/note_model.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubit() : super(AddNoteCubitInitial());

  Color color = const Color(0xffFF8066);
  addNote(NoteModel note) async {
    note.color = color.value;
    emit(AddNoteCubitLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesbox);
      await notesBox.add(note);
      emit(AddNoteCubitSuccess());
    } catch (e) {
      emit(AddNoteCubitFailure(e.toString()));
    }
  }
}

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:mynoteapp/models/note_model.dart';

part 'notescubit_state.dart';

class NotescubitCubit extends Cubit<NotescubitState> {
  NotescubitCubit() : super(NotesInitial());
}

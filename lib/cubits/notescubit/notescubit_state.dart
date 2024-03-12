part of 'notescubit_cubit.dart';

@immutable
sealed class NotescubitState {}

final class NotesInitial extends NotescubitState {}

final class NotesLoading extends NotescubitState {}

final class NotesSuccess extends NotescubitState {
  final List<NoteModel> notes;

  NotesSuccess(this.notes);
}

final class NotesFailuer extends NotescubitState {
  final String errMessage;

  NotesFailuer(this.errMessage);
}

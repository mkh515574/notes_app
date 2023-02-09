part of 'notes_cubit.dart';

@immutable
abstract class NotesState {}

class NotesInitial extends NotesState {}

class AddNoteLoading extends NotesState {}

class AddNoteFailure extends NotesState {
  final String error;
  AddNoteFailure({required this.error});
}

class AddNoteSuccess extends NotesState {}

class NoteLoading extends NotesState {}

class NoteFailure extends NotesState {
  final String error;
  NoteFailure({required this.error});
}

class NoteSuccess extends NotesState {
  final List<NoteModel> note;

  NoteSuccess(this.note);
}

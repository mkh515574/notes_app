part of 'notes_cubit.dart';

@immutable
abstract class NotesState {}

class NotesInitial extends NotesState {}

class NoteLoading extends NotesState {}

class NoteFailure extends NotesState {
  final String error;
  NoteFailure({required this.error});
}

class NoteSuccess extends NotesState {}

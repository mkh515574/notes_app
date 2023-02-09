import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

   addNote(NoteModel note)async {
     emit(NoteLoading());
     try{
       var notesBox = Hive.box<NoteModel>(kNotesBox);
       await notesBox.add(note);
       emit(NoteSuccess());
     }catch(e){
       emit(NoteFailure(error: e.toString()));
     }
   }
}

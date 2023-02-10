import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/edit_note_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({Key? key, required this.noteModel}) : super(key: key);

  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteBody(noteModel: noteModel,),
    );
  }
}

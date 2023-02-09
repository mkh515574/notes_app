

import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
      return const NoteItem();
    });
  }
}

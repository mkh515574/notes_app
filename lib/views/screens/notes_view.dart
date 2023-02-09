import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/note_view_body.dart';

import '../widgets/addnote_botom_sheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: NoteViewBody(),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
            ),
            context: context,
            builder: (context)
          {
            return const AddNoteBottomSheet();
          },
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_appbar.dart';

import 'package:note_app/views/widgets/notes_list_view.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustomAppBar(),
        Expanded(
          child: NotesListView(),
        ),
      ],
    );
  }
}

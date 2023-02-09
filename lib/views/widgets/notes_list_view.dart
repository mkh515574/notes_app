import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> model = BlocProvider.of<NotesCubit>(context).note!;
        return ListView.builder(
          itemCount: model.length,
            itemBuilder: (context, index) {
          return  NoteItem(
            noteModel: model[index],
          );
        });
      },
    );
  }
}

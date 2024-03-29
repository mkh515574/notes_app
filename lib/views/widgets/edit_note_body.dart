import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/custom_appbar.dart';
import 'package:note_app/views/widgets/custom_text_fild.dart';
import 'package:note_app/views/widgets/edit_colors_list_view.dart';

import '../../conttroler/notes_cubit.dart';



class EditNoteBody extends StatefulWidget {
  const EditNoteBody({Key? key, required this.noteModel}) : super(key: key);

  final NoteModel noteModel;

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
  String? title, suTitle;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          children: [
            CustomAppBar(
              onTap: () {
                widget.noteModel.title = title ?? widget.noteModel.title;
                widget.noteModel.suTitle = suTitle ?? widget.noteModel.suTitle;
                widget.noteModel.save();

                BlocProvider.of<NotesCubit>(context).fetchNotes();
                Navigator.pop(context);
              },
              icon: Icons.check,
              title: "Edit Note",
            ),
            const SizedBox(
              height: 50,
            ),
            CustomTextField(
              onChanged: (value) {
                title = value;
              },
              hintText: widget.noteModel.title,
              iconData: Icons.title,
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: CustomTextField(
                onChanged: (value) {
                  suTitle = value;
                },
                maxLines: 50,
                hintText: widget.noteModel.suTitle,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
             EditNoteColorsList(note: widget.noteModel),
          ],
        ),
      ),
    );
  }
}

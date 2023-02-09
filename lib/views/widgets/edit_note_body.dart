import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_appbar.dart';
import 'package:note_app/views/widgets/custom_text_fild.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          children: const [
            CustomAppBar(
              icon: Icons.check,
              title: "Edit Note",
            ),
            SizedBox(
              height: 50,
            ),
            CustomTextField(
                hintText: "Title",
              iconData: Icons.title,
            ),
            SizedBox(
              height: 16,
              
            ),
            CustomTextField(
              hintText: "Content",
              maxLines: 5,
            )
          ],
        ),
      ),
    );
  }
}

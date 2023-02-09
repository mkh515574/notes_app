import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_text_fild.dart';

import '../../constants.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      child: Column(
        children: const [
          SizedBox(
            height: 25,
          ),
          CustomTextField(
              hintText: "Title",
              iconData:  Icon(Icons.title, color: kColor)),
          SizedBox(
            height: 24,
          ),
          CustomTextField(
            hintText: "Content",
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}

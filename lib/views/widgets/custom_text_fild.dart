import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomTextField extends StatelessWidget {

  const CustomTextField({super.key,required this.hintText,this.maxLines =1,this.iconData});
  final String hintText;
  final int maxLines ;
  final Icon? iconData;

  @override
  Widget build(BuildContext context) {
    return  TextField(
      cursorColor: kColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        border: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(color:  const Color(0xff62FCD7)),
        prefixIcon: iconData,
        hintText: hintText,

        hintStyle:  const TextStyle(
          color: kColor,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        )
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder({color}) {
    return OutlineInputBorder(

        borderRadius: BorderRadius.circular(16),
        borderSide:  BorderSide(
          color: color ?? Colors.white
        )
      );
  }
}

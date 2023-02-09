import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        margin:const EdgeInsets.only(top: 40),
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: kColor,
            // gradient: const LinearGradient(colors: [
            //   Color.fromRGBO(143, 148, 251, 1),
            //   Color.fromRGBO(143, 148, 251, .6),
            // ])
        ),
        child: const Center(
          child: Text(
            "Add",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

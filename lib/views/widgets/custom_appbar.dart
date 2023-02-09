import 'package:flutter/cupertino.dart';
import 'package:note_app/views/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.icon, required this.title})
      : super(key: key);

  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text(
          title,
          style:const  TextStyle(
            fontSize: 28,
          ),
        ),
        const Spacer(),
        CustomIcon(icon: icon),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({Key? key,required this.icon}) : super(key: key);

  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(16),
      ),
      child:  Icon(
        icon,
        size: 28,
      ),
    );
  }
}

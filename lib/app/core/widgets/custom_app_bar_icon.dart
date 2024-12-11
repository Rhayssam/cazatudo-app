// Essenciais
import 'package:flutter/material.dart';

class CustomAppBarIcon extends StatelessWidget {
  final Icon? icon;
  final VoidCallback onPressed;
  const CustomAppBarIcon({
    Key? key,
    this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        onTap: onPressed,
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
          ),
          child: icon,
        ),
      ),
    );
  }
}

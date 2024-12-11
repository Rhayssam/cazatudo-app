// Essenciais
import 'package:cazatudo_app/app/core/ui/theme_config.dart';
import 'package:flutter/material.dart';

class CustomAppBarIcon extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  const CustomAppBarIcon({
    Key? key,
    required this.icon,
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
          child: Icon(
            icon,
            color: ThemeConfig.lightOrange,
            size: 35,
          ),
        ),
      ),
    );
  }
}

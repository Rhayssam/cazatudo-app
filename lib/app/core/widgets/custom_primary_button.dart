// Essenciais
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomPrimaryButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String label;
  final double? width;
  final double? height;
  final Colors? color;

  const CustomPrimaryButton({
    super.key,
    this.onPressed,
    required this.label,
    this.width,
    this.height = 50,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            backgroundColor: context.theme.primaryColor),
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MultiTextButton extends StatelessWidget {
  final List<Text> children;
  final VoidCallback onPressed;
  const MultiTextButton({
    super.key,
    required this.onPressed,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: children,
        ));
  }
}

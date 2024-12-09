// Essenciais
import 'package:flutter/material.dart';

// UI
import 'package:cazatudo_app/app/core/ui/custom_text_styles.dart';
import 'package:cazatudo_app/app/core/ui/theme_config.dart';

class CustomTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const CustomTextButton({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style:
            CustomTextStyles.smallText12.copyWith(color: ThemeConfig.orange1),
      ),
    );
  }
}

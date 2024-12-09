// Essenciais
import 'package:flutter/material.dart';

// UI
import 'package:cazatudo_app/app/core/ui/custom_text_styles.dart';
import 'package:cazatudo_app/app/core/ui/theme_config.dart';

class CustomPrimaryButton extends StatelessWidget {
  final String text;

  const CustomPrimaryButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 44,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: ThemeConfig.orangeGradient,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          text,
          style:
              CustomTextStyles.mediumText20.copyWith(color: ThemeConfig.white),
        ),
      ),
    );
  }
}

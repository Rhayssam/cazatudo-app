// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:cazatudo_app/app/core/ui/custom_text_styles.dart';
import 'package:cazatudo_app/app/core/ui/theme_config.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  PrimaryButton({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.all(Radius.circular(38.0)),
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(38.0)),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: ThemeConfig.orangeGradient,
          ),
        ),
        child: InkWell(
          borderRadius: BorderRadius.all(Radius.circular(38.0)),
          onTap: onPressed,
          child: Container(
            alignment: Alignment.center,
            height: 64,
            decoration: BoxDecoration(),
            child: Text(
              text,
              style: CustomTextStyles.mediumText18
                  .copyWith(color: ThemeConfig.white),
            ),
          ),
        ),
      ),
    );
  }
}
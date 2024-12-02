import 'package:cazatudo_app/app/core/ui/text_styles.dart';
import 'package:cazatudo_app/app/core/ui/theme_config.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;

  const PrimaryButton({
    Key? key,
    this.onPressed,
    required this.text,
  }) : super(key: key);

  final BorderRadius _borderRadius =
      const BorderRadius.all(Radius.circular(24.0));

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.0,
      decoration: BoxDecoration(
        borderRadius: _borderRadius,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: onPressed != null
              ? ThemeConfig.darkOrangeGradient
              : ThemeConfig.greyGradient,
        ),
      ),
      child: InkWell(
        borderRadius: _borderRadius,
        onTap: onPressed,
        child: Align(
          child: Text(
            text,
            style: CustomTextStyles.mediumText18.copyWith(
              color: ThemeConfig.white,
            ),
          ),
        ),
      ),
    );
  }
}

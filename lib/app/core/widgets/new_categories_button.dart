// Essenciais
import 'package:flutter/material.dart';

// UI
import 'package:cazatudo_app/app/core/ui/custom_text_styles.dart';
import 'package:cazatudo_app/app/core/ui/theme_config.dart';

class NewCategoriesButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const NewCategoriesButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 1),
      child: Material(
        color: ThemeConfig.white,
        child: InkWell(
          onTap: onPressed,
          splashColor: ThemeConfig.grey.withOpacity(0.2),
          child: Container(
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Expanded(
                  flex: 8,
                  child: Text(
                    text,
                    style: CustomTextStyles.smallText.copyWith(
                      color: ThemeConfig.grey,
                    ),
                  ),
                ),
                const Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: ThemeConfig.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
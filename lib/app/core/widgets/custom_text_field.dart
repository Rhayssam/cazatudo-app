import 'package:cazatudo_app/app/core/ui/custom_text_styles.dart';
import 'package:cazatudo_app/app/core/ui/theme_config.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.icon,
    required this.type,
    required this.focusNode,
  });

  final TextEditingController controller;
  final IconData icon;
  final String type;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 44,
        decoration: BoxDecoration(
          color: ThemeConfig.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: TextField(
          style:
              CustomTextStyles.mediumText18.copyWith(color: ThemeConfig.grey),
          controller: controller,
          focusNode: focusNode,
          decoration: InputDecoration(
            hintText: type,
            hintStyle: TextStyle(color: ThemeConfig.lightGrey),
            prefixIcon: Icon(
              icon,
              color: focusNode.hasFocus
                  ? ThemeConfig.orange1
                  : ThemeConfig.lightGrey,
            ),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 15,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: ThemeConfig.lightGrey, width: 2),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: ThemeConfig.orange1, width: 2),
            ),
          ),
        ),
      ),
    );
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
// Essenciais
import 'package:flutter/material.dart';

// UI
import 'package:cazatudo_app/app/core/ui/custom_text_styles.dart';
import 'package:cazatudo_app/app/core/ui/theme_config.dart';

class CustomAppBarTitle extends StatelessWidget {
  final String title;
  const CustomAppBarTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 8,
      child: Container(
        child: Text(
          title,
          style:
              CustomTextStyles.mediumText23.copyWith(color: ThemeConfig.white),
        ),
      ),
    );
  }
}

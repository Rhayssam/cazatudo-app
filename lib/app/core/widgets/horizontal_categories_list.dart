// ignore_for_file: public_member_api_docs, sort_constructors_first
// Essenciais
import 'package:flutter/material.dart';

import 'package:cazatudo_app/app/core/ui/custom_text_styles.dart';

// UI
import 'package:cazatudo_app/app/core/ui/theme_config.dart';

class HorizontalCategoriesList extends StatelessWidget {
  final String texto;
  const HorizontalCategoriesList({
    Key? key,
    required this.texto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 100,
          height: 100,
          margin: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: ThemeConfig.lightOrange,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        const SizedBox(height: 2),
        SizedBox(
          width: 100,
          child: Text(
            texto,
            style:
                CustomTextStyles.smallText14.copyWith(color: ThemeConfig.grey),
            textAlign: TextAlign.center,
            softWrap: true,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
// Essenciais
import 'package:flutter/material.dart';

// UI
import 'package:cazatudo_app/app/core/ui/custom_text_styles.dart';
import 'package:cazatudo_app/app/core/ui/theme_config.dart';

class TopicTitle extends StatelessWidget {
  final String titulo;
  const TopicTitle({
    Key? key,
    required this.titulo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Text(
          titulo,
          style: CustomTextStyles.mediumText20
              .copyWith(color: ThemeConfig.orange1),
        ),
      ),
    );
  }
}

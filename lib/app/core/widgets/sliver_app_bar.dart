// Essenciais
import 'package:flutter/material.dart';

// UI
import 'package:cazatudo_app/app/core/ui/theme_config.dart';

class CustomSliverAppBar extends StatelessWidget {
  final List<Widget>? actions;
  final Text? title;

  const CustomSliverAppBar({
    Key? key,
    this.actions,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: ThemeConfig.orange1,
      automaticallyImplyLeading: false,
      title: title,
      actions: actions,
      floating: true,
      pinned: false,
    );
  }
}

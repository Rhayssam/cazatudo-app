// Essenciais
import 'package:flutter/material.dart';

// UI
import 'package:cazatudo_app/app/core/ui/theme_config.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget>? actions;
  final Text? title;
  const CustomAppBar({
    Key? key,
    this.actions,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ThemeConfig.orange1,
      automaticallyImplyLeading: false,
      title: title,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

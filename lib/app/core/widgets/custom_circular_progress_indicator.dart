// Essenciais
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// UI
import 'package:cazatudo_app/app/core/ui/theme_config.dart';

class CustomCircularProgressIndicator extends StatelessWidget {
  final Color? color;
  const CustomCircularProgressIndicator({
    super.key,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 3),
      () {
        Get.offNamed('/initial');
      },
    );
    return Center(
      child: CircularProgressIndicator(
        color: color ?? ThemeConfig.white,
      ),
    );
  }
}

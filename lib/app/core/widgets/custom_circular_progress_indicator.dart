import 'package:cazatudo_app/app/core/ui/theme_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomCircularProgressIndicator extends StatelessWidget {
  final Color? color;
  const CustomCircularProgressIndicator({
    super.key,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 2),
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

// Essenciais
import 'package:flutter/material.dart';

// UI
import 'package:cazatudo_app/app/core/ui/theme_config.dart';
import 'package:cazatudo_app/app/core/ui/custom_text_styles.dart';

// Widgets Personalizados
import 'package:cazatudo_app/app/core/widgets/custom_circular_progress_indicator.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: ThemeConfig.orangeGradient,
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'CAZATUDO',
              style:
                  CustomTextStyles.bigText.copyWith(color: ThemeConfig.white),
            ),
            CustomCircularProgressIndicator()
          ],
        ),
      ),
    );
  }
}

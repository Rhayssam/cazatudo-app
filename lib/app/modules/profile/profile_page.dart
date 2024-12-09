// Essenciais
import 'package:cazatudo_app/app/core/ui/custom_text_styles.dart';
import 'package:cazatudo_app/app/core/ui/theme_config.dart';
import 'package:flutter/material.dart';

// Widgets Personalizados
import 'package:cazatudo_app/app/core/widgets/custom_app_bar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          'Minha Conta',
          style: CustomTextStyles.mediumText20.copyWith(
            color: ThemeConfig.white,
          ),
        ),
      ),
      body: Container(
        child: Text('Minha conta'),
      ),
    );
  }
}

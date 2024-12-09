// Essenciais
import 'package:flutter/material.dart';

// UI
import 'package:cazatudo_app/app/core/ui/theme_config.dart';
import 'package:cazatudo_app/app/core/ui/custom_text_styles.dart';

// Widgets Personalizados
import 'package:cazatudo_app/app/core/widgets/custom_app_bar.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          'Notificações',
          style: CustomTextStyles.mediumText20.copyWith(
            color: ThemeConfig.white,
          ),
        ),
      ),
      body: Container(
        child: Text('Notificações'),
      ),
    );
  }
}

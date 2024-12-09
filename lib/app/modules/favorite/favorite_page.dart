import 'package:cazatudo_app/app/core/ui/custom_text_styles.dart';
import 'package:cazatudo_app/app/core/ui/theme_config.dart';
import 'package:cazatudo_app/app/core/widgets/custom_app_bar.dart';
import 'package:cazatudo_app/app/core/widgets/custom_app_bar_cart.dart';
import 'package:flutter/material.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          'Favoritos',
          style: CustomTextStyles.mediumText20.copyWith(
            color: ThemeConfig.white,
          ),
        ),
      ),
      body: Container(
        child: Text('Favoritos'),
      ),
    );
  }
}

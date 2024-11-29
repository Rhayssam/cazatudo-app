import 'package:cazatudo_app/app/core/ui/text_styles.dart';
import 'package:cazatudo_app/app/core/ui/theme_config.dart';
import 'package:cazatudo_app/app/core/widgets/multi_text_button.dart';
import 'package:cazatudo_app/app/core/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardPage extends StatelessWidget {
  const OnboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: ThemeConfig.orangeGradient,
        )),
        child: Align(
          child: Column(
            children: [
              const SizedBox(
                height: 50.0,
              ),
              Text(
                'CAZATUDO',
                style: TextStyles.mediumText18.copyWith(
                  color: ThemeConfig.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 32.0,
                  right: 32.0,
                  top: 16.0,
                  bottom: 4.0,
                ),
                child: PrimaryButton(
                  text: 'Começar',
                  onPressed: () {
                    Get.toNamed('/signIn');
                  },
                ),
              ),
              // MultiTextButton(
              //   onPressed: () {
              //     Get.toNamed('');
              //   },
              //   children: [
              //     Text(
              //       'Ainda não possui uma conta?',
              //       style:
              //           TextStyles.smallText.copyWith(color: ThemeConfig.grey),
              //     ),
              //     Text('Criar Conta'),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

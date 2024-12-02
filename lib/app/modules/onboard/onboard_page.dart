import 'package:cazatudo_app/app/core/ui/text_styles.dart';
import 'package:cazatudo_app/app/core/ui/theme_config.dart';
import 'package:cazatudo_app/app/core/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardPage extends StatelessWidget {
  const OnboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 65,
            child: Container(
              color: ThemeConfig.darkGrey,
              child: const Center(
                child: Text(
                  'Imagem ou video do instagram das lojas',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 35,
            child: Container(
              color: ThemeConfig.iceWhite,
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    Text(
                      'Móveis e Decoração',
                      style: CustomTextStyles.mediumText
                          .copyWith(color: ThemeConfig.orange),
                    ),
                    Text(
                      'de A a Z',
                      style: CustomTextStyles.mediumText24
                          .copyWith(color: ThemeConfig.orange),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 32.0,
                        right: 32.0,
                        top: 16.0,
                        bottom: 4.0,
                      ),
                      child: PrimaryButton(
                        text: 'Vamos Lá!',
                        onPressed: () {
                          Get.toNamed('/signIn');
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

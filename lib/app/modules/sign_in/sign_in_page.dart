// Essenciais
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Widgets Personalizados
import 'package:cazatudo_app/app/core/widgets/multi_text_button.dart';
import 'package:cazatudo_app/app/core/widgets/primary_button.dart';

// UI
import 'package:cazatudo_app/app/core/ui/theme_config.dart';
import 'package:cazatudo_app/app/core/ui/custom_text_styles.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Text(
            'Bem vindo de volta!',
            textAlign: TextAlign.center,
            style: CustomTextStyles.mediumText
                .copyWith(color: ThemeConfig.orange1),
          ),
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            'assets/images/signUp.png',
            height: 180,
            width: 415,
          ),
          Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Exemplo',
                    border: OutlineInputBorder(),
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
                    onPressed: () {},
                    text: 'Entrar',
                  ),
                ),
                MultiTextButton(
                  onPressed: () {
                    Get.toNamed('/signUp');
                  },
                  children: [
                    Text(
                      'Não possui conta? ',
                      style: CustomTextStyles.smallText
                          .copyWith(color: ThemeConfig.grey),
                    ),
                    Text(
                      'Criar Conta',
                      style: CustomTextStyles.smallText
                          .copyWith(color: ThemeConfig.orange1),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

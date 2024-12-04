// Essenciais
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// UI
import 'package:cazatudo_app/app/core/ui/custom_text_styles.dart';
import 'package:cazatudo_app/app/core/ui/theme_config.dart';

// Widgets Personalizados
import 'package:cazatudo_app/app/core/widgets/multi_text_button.dart';
import 'package:cazatudo_app/app/core/widgets/primary_button.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Text(
            'Faça seu Cadastro!',
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
                    text: 'Criar Conta',
                  ),
                ),
                MultiTextButton(
                  onPressed: () {
                    Get.toNamed('/signIn');
                  },
                  children: [
                    Text(
                      'Já possui conta? ',
                      style: CustomTextStyles.smallText
                          .copyWith(color: ThemeConfig.grey),
                    ),
                    Text(
                      'Faça Login',
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

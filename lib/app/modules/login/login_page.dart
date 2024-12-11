// Essenciais
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Rotas
import 'package:cazatudo_app/app/core/app_routes/app_routes.dart';

// UI
import 'package:cazatudo_app/app/core/ui/custom_text_styles.dart';
import 'package:cazatudo_app/app/core/ui/theme_config.dart';

// Widgets Personalizados
import 'package:cazatudo_app/app/core/widgets/custom_text_field.dart';
import 'package:cazatudo_app/app/core/widgets/custom_text_button.dart';
import 'package:cazatudo_app/app/core/widgets/custom_primary_button.dart';
import 'package:cazatudo_app/app/core/widgets/multi_text_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final email = TextEditingController();
  FocusNode emailF = FocusNode();
  final password = TextEditingController();
  FocusNode passwordF = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeConfig.background,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              width: 96,
              height: 100,
            ),
            Center(
              child: Image.asset('assets/images/cazatudo_logo_recort.png'),
            ),
            SizedBox(height: 120),
            CustomTextField(
              controller: email,
              icon: Icons.email,
              type: 'Email',
              focusNode: emailF,
            ),
            SizedBox(height: 15),
            CustomTextField(
              controller: password,
              icon: Icons.lock,
              type: 'Senha',
              focusNode: passwordF,
            ),
            SizedBox(height: 10),
            CustomTextButton(
              onPressed: () {},
              text: 'Esqueceu sua senha?',
            ),
            SizedBox(height: 10),
            CustomPrimaryButton(
              text: 'Login',
            ),
            SizedBox(height: 10),
            Center(
              child: MultiTextButton(
                onPressed: () {
                  Get.toNamed(AppRoutes.signUp);
                },
                children: [
                  Text(
                    'Não possui uma conta? ',
                    style: CustomTextStyles.smallText12.copyWith(
                      color: ThemeConfig.grey,
                    ),
                  ),
                  Text(
                    'Crie agora!',
                    style: CustomTextStyles.smallText12.copyWith(
                      color: ThemeConfig.orange1,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget CriarConta() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Não possui uma conta? ',
            style: CustomTextStyles.smallText12.copyWith(
              color: ThemeConfig.grey,
            ),
          ),
          Text(
            'Crie agora!',
            style: CustomTextStyles.smallText12.copyWith(
              color: ThemeConfig.orange1,
            ),
          ),
        ],
      ),
    );
  }
}

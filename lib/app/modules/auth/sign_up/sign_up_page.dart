// Essenciais
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// UI
import 'package:cazatudo_app/app/core/ui/custom_text_styles.dart';
import 'package:cazatudo_app/app/core/ui/theme_config.dart';

// Rotas
import 'package:cazatudo_app/app/core/app_routes/app_routes.dart';

// Widgets Personalizados
import 'package:cazatudo_app/app/core/widgets/custom_primary_button.dart';
import 'package:cazatudo_app/app/core/widgets/multi_text_button.dart';
import 'package:cazatudo_app/app/core/widgets/custom_text_field.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  // Controllers
  final name = TextEditingController();
  FocusNode nameF = FocusNode();

  final email = TextEditingController();
  FocusNode emailF = FocusNode();

  final password = TextEditingController();
  FocusNode passwordF = FocusNode();

  final passwordConfirm = TextEditingController();
  FocusNode passwordConfirmF = FocusNode();

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
              controller: name,
              icon: Icons.person,
              type: 'Nome',
              focusNode: nameF,
            ),
            SizedBox(height: 15),
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
            SizedBox(height: 15),
            CustomTextField(
              controller: passwordConfirm,
              icon: Icons.lock,
              type: 'Confirmar Senha',
              focusNode: passwordConfirmF,
            ),
            SizedBox(height: 15),
            CustomPrimaryButton(
              text: 'Criar Conta',
            ),
            SizedBox(height: 10),
            Center(
              child: MultiTextButton(
                onPressed: () {
                  Get.toNamed(AppRoutes.login);
                },
                children: [
                  Text(
                    'Já possui uma conta? ',
                    style: CustomTextStyles.smallText12.copyWith(
                      color: ThemeConfig.grey,
                    ),
                  ),
                  Text(
                    'Faça login!',
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
}

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
            CustomTextField(email, Icons.email, 'Email', emailF),
            SizedBox(height: 15),
            CustomTextField(password, Icons.lock, 'Senha', passwordF),
            SizedBox(height: 10),
            ForgotPassword(),
            SizedBox(height: 10),
            PrimaryButton(),
            SizedBox(height: 10),
            CriarConta()
          ],
        ),
      ),
    );
  }

  Padding CriarConta() {
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
          )
        ],
      ),
    );
  }

  Widget PrimaryButton() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 44,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: ThemeConfig.orangeGradient,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          'Login',
          style:
              CustomTextStyles.mediumText20.copyWith(color: ThemeConfig.white),
        ),
      ),
    );
  }

  Widget ForgotPassword() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        'Esqueceu a sua senha?',
        style:
            CustomTextStyles.smallText12.copyWith(color: ThemeConfig.orange1),
      ),
    );
  }

  Widget CustomTextField(TextEditingController controller, IconData icon,
      String type, FocusNode focusNode) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 44,
        decoration: BoxDecoration(
          color: ThemeConfig.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: TextField(
          style:
              CustomTextStyles.mediumText18.copyWith(color: ThemeConfig.grey),
          controller: controller,
          focusNode: focusNode,
          decoration: InputDecoration(
              hintText: type,
              prefixIcon: Icon(
                icon,
                color: focusNode.hasFocus
                    ? ThemeConfig.orange1
                    : ThemeConfig.lightGrey,
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 15,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: ThemeConfig.lightGrey, width: 2),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: ThemeConfig.orange1, width: 2),
              )),
        ),
      ),
    );
  }
}

// Essenciais
import 'package:cazatudo_app/app/core/state/cazatudo_state.dart';
import 'package:cazatudo_app/app/modules/auth/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:validatorless/validatorless.dart';

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

class _LoginPageState extends CazatudoState<LoginPage, LoginController> {
  final _formKey = GlobalKey<FormState>();
  final _emailEC = TextEditingController();
  final _passwordEC = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailEC.dispose();
    _passwordEC.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeConfig.background,
      body: SingleChildScrollView(
        child: SafeArea(
          child: IntrinsicHeight(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/images/cazatudo_logo_recort.png',
                        width: context.widthTransformer(reducedBy: 10),
                        height: context.heightTransformer(reducedBy: 80),
                      ),
                    ),
                    CustomTextField(
                      label: 'Email',
                      controller: _emailEC,
                      icon: Icon(Icons.email_rounded),
                      validator: Validatorless.multiple(
                        [
                          Validatorless.required('E-mail Obrigatório'),
                          Validatorless.email('E-mail inválido'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    CustomTextField(
                      label: 'Senha',
                      controller: _passwordEC,
                      icon: Icon(Icons.lock_rounded),
                      validator: Validatorless.multiple(
                        [
                          Validatorless.required('Senha obrigatória'),
                          Validatorless.min(
                              6, 'Senha Deve conter pelo menos 6 caracteres'),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      alignment: Alignment.topRight,
                      child: CustomTextButton(
                        onPressed: () {},
                        text: 'Esqueceu sua senha?',
                      ),
                    ),
                    SizedBox(height: 10),
                    CustomPrimaryButton(
                      label: 'LOGIN',
                      width: context.width,
                      onPressed: () {
                        final formValid =
                            _formKey.currentState?.validate() ?? false;
                        if (formValid) {
                          controller.login(
                            email: _emailEC.text,
                            password: _passwordEC.text,
                          );
                        }
                      },
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: MultiTextButton(
                        onPressed: () {
                          Get.offAndToNamed(AppRoutes.signUp);
                        },
                        children: [
                          Text(
                            'Não possui uma conta? ',
                            style: CustomTextStyles.smallText12.copyWith(
                              color: ThemeConfig.grey,
                            ),
                          ),
                          Text(
                            'Cadastre-se',
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
            ),
          ),
        ),
      ),
    );
  }
}

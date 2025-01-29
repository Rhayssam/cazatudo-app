// Essenciais
import 'package:cazatudo_app/app/core/state/cazatudo_state.dart';
import 'package:cazatudo_app/app/modules/auth/sign_up/sign_up_controller.dart';
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
import 'package:validatorless/validatorless.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends CazatudoState<SignUpPage, SignUpController> {
  final _formKey = GlobalKey<FormState>();
  final _nameEC = TextEditingController();
  final _emailEC = TextEditingController();
  final _passwordEC = TextEditingController();

  @override
  void dispose() {
    _nameEC.dispose();
    _emailEC.dispose();
    _passwordEC.dispose();
    super.dispose();
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
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/images/cazatudo_logo_recort.png',
                        width: context.widthTransformer(reducedBy: 10),
                        height: context.heightTransformer(reducedBy: 80),
                      ),
                    ),
                    CustomTextField(
                      label: 'Nome',
                      controller: _nameEC,
                      icon: Icon(Icons.person_rounded),
                      validator: Validatorless.required('Preencha o nome'),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                      label: 'Email',
                      controller: _emailEC,
                      icon: Icon(Icons.email_rounded),
                      validator: Validatorless.multiple([
                        Validatorless.required('Preencha o Email'),
                        Validatorless.email('Email inválido'),
                      ]),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                      label: 'Senha',
                      controller: _passwordEC,
                      icon: Icon(Icons.lock_rounded),
                      validator: Validatorless.multiple([
                        Validatorless.required('Senha Obrigatória'),
                        Validatorless.min(
                            6, 'Senha deve conter pelo menos 6 caracteres')
                      ]),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                      label: 'Confirmar Senha',
                      icon: Icon(Icons.lock_rounded),
                      validator: Validatorless.multiple([
                        Validatorless.required('Confirmar Senha Obrigatória'),
                        Validatorless.compare(
                            _passwordEC, 'As senhas devem ser iguais'),
                      ]),
                    ),
                    SizedBox(height: 15),
                    CustomPrimaryButton(
                      label: 'CRIAR CONTA',
                      width: context.width,
                      onPressed: () {
                        final formValid =
                            _formKey.currentState?.validate() ?? false;
                        if (formValid) {
                          controller.register(
                            name: _nameEC.text,
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
                          Get.offAndToNamed(AppRoutes.login);
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
            ),
          ),
        ),
      ),
    );
  }
}

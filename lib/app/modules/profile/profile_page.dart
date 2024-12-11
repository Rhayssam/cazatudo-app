// Essenciais
import 'package:flutter/material.dart';

// UI
import 'package:cazatudo_app/app/core/ui/theme_config.dart';

// Widgets Personalizados - AppBar
import 'package:cazatudo_app/app/core/widgets/sliver_app_bar.dart';
import 'package:cazatudo_app/app/core/widgets/custom_app_bar_title.dart';
// Widgets Personalizados
import 'package:cazatudo_app/app/core/widgets/profile_header.dart';
import 'package:cazatudo_app/app/core/widgets/profile_options_button.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeConfig.background,
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar(
            actions: [
              const SizedBox(width: 15),
              CustomAppBarTitle(title: 'Minha Conta'),
            ],
          ),
          ProfileHeader(),
          SliverToBoxAdapter(child: const SizedBox(height: 15)),
          ProfileOptionsButton(
            text: 'Meus Dados',
            onPressed: () {},
            icon: Icons.person,
          ),
          ProfileOptionsButton(
            text: 'Meus Pedidos',
            onPressed: () {},
            icon: Icons.shopping_basket,
          ),
          ProfileOptionsButton(
            text: 'Atendimento ao Cliente',
            onPressed: () {},
            icon: Icons.headset_mic,
          ),
          ProfileOptionsButton(
            text: 'Lojas',
            onPressed: () {},
            icon: Icons.store_rounded,
          ),
          ProfileOptionsButton(
            text: 'Favoritos',
            onPressed: () {},
            icon: Icons.favorite,
          ),
          ProfileOptionsButton(
            text: 'Excluir Conta',
            onPressed: () {},
            icon: Icons.delete,
          ),
          ProfileOptionsButton(
            text: 'Sair',
            onPressed: () {},
            icon: Icons.exit_to_app,
            isQuit: true,
          ),
        ],
      ),
    );
  }
}

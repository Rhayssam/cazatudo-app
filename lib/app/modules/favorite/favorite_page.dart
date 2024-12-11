// Essenciais
import 'package:flutter/material.dart';

// Rotas
import 'package:cazatudo_app/app/core/app_routes/app_routes.dart';

// UI
import 'package:cazatudo_app/app/core/ui/theme_config.dart';

// Widgets Personalizados - AppBar
import 'package:cazatudo_app/app/core/widgets/custom_app_bar_title.dart';
import 'package:cazatudo_app/app/core/widgets/custom_app_bar_icon.dart';
import 'package:cazatudo_app/app/core/widgets/sliver_app_bar.dart';
// Widgets Personalizados
import 'package:cazatudo_app/app/core/widgets/empty_view.dart';
import 'package:get/get.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeConfig.background,
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar(
            actions: [
              const SizedBox(width: 15),
              CustomAppBarTitle(title: 'Favoritos'),
              CustomAppBarIcon(
                icon: Icons.shopping_cart_rounded,
                onPressed: () {
                  Get.toNamed(
                    AppRoutes.cart,
                  );
                },
              ),
              const SizedBox(width: 15),
            ],
          ),
          EmptyView(
            text: 'Ops!...Você ainda não tem itens favoritos',
            icon: Icons.favorite,
          ),
        ],
      ),
    );
  }
}

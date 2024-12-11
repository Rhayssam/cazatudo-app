// Essenciais
import 'package:cazatudo_app/app/core/ui/custom_text_styles.dart';
import 'package:cazatudo_app/app/core/widgets/empty_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// UI
import 'package:cazatudo_app/app/core/ui/theme_config.dart';

// Widgets Personalizados - AppBar
import 'package:cazatudo_app/app/core/widgets/custom_app_bar_icon.dart';
// Widgets Personalizados
import 'package:cazatudo_app/app/core/widgets/custom_app_bar_title.dart';
import 'package:cazatudo_app/app/core/widgets/sliver_app_bar.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeConfig.background,
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar(
            actions: [
              SizedBox(
                width: 15,
              ),
              CustomAppBarIcon(
                onPressed: () {
                  Get.toNamed('/navigation');
                },
                icon: Icons.arrow_back_ios,
              ),
              CustomAppBarTitle(title: 'Carrinho')
            ],
          ),
          EmptyView(
              text: 'Seu carrinho está vazio',
              icon: Icons.shopping_cart_rounded),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ThemeConfig.orange1,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.shopping_cart_rounded,
                      color: ThemeConfig.white,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Continue Comprando',
                      style: CustomTextStyles.mediumText18
                          .copyWith(color: ThemeConfig.white),
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

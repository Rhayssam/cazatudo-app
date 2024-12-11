// Essenciais
import 'package:flutter/material.dart';

// Rotas
import 'package:cazatudo_app/app/core/app_routes/app_routes.dart';

// UI
import 'package:cazatudo_app/app/core/ui/custom_text_styles.dart';
import 'package:cazatudo_app/app/core/ui/theme_config.dart';

// Widgets Personalizados - AppBar
import 'package:cazatudo_app/app/core/widgets/sliver_app_bar.dart';
import 'package:cazatudo_app/app/core/widgets/custom_app_bar_search.dart';
import 'package:cazatudo_app/app/core/widgets/custom_app_bar_icon.dart';
// Widgets Personalizados
import 'package:cazatudo_app/app/core/widgets/categories_button.dart';
import 'package:get/get.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeConfig.background,
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar(
            actions: [
              const SizedBox(width: 15),
              CustomAppBarSearch(),
              const SizedBox(width: 15),
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
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Text(
                'Categorias',
                style: CustomTextStyles.mediumText20
                    .copyWith(color: ThemeConfig.grey),
              ),
            ),
          ),
          CategoriesButton(text: 'Exemplo de Categoria', onPressed: () {}),
          CategoriesButton(text: 'Exemplo de Categoria', onPressed: () {}),
          CategoriesButton(text: 'Exemplo de Categoria', onPressed: () {}),
          CategoriesButton(text: 'Exemplo de Categoria', onPressed: () {}),
          CategoriesButton(text: 'Exemplo de Categoria', onPressed: () {}),
          CategoriesButton(text: 'Exemplo de Categoria', onPressed: () {}),
          CategoriesButton(text: 'Exemplo de Categoria', onPressed: () {}),
          CategoriesButton(text: 'Exemplo de Categoria', onPressed: () {}),
          CategoriesButton(text: 'Exemplo de Categoria', onPressed: () {}),
          CategoriesButton(text: 'Exemplo de Categoria', onPressed: () {}),
          CategoriesButton(text: 'Exemplo de Categoria', onPressed: () {}),
          CategoriesButton(text: 'Exemplo de Categoria', onPressed: () {}),
          CategoriesButton(text: 'Exemplo de Categoria', onPressed: () {}),
          CategoriesButton(text: 'Exemplo de Categoria', onPressed: () {}),
          CategoriesButton(text: 'Exemplo de Categoria', onPressed: () {}),
          CategoriesButton(text: 'Exemplo de Categoria', onPressed: () {}),
          CategoriesButton(text: 'Exemplo de Categoria', onPressed: () {}),
          CategoriesButton(text: 'Exemplo de Categoria', onPressed: () {}),
          SliverToBoxAdapter(
            child: const SizedBox(
              height: 15,
            ),
          ),
        ],
      ),
    );
  }
}

// Essenciais
import 'package:cazatudo_app/app/core/widgets/new_categories_button.dart';
import 'package:cazatudo_app/app/core/widgets/spacing.dart';
import 'package:cazatudo_app/app/core/widgets/topic_title.dart';
import 'package:cazatudo_app/app/modules/categories/category_controller.dart';
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

class CategoriesPage extends GetView<CategoryController> {
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
          controller.obx(
            (state) {
              if (state == null) {
                return Center(
                  child: Text('Nenhuma categoria cadastrada'),
                );
              }
              return SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final category = state[index];
                    return NewCategoriesButton(
                      text: category.name,
                      onPressed: () {},
                    );
                  },
                  childCount: state.length,
                ),
              );
            },
            onLoading: SliverToBoxAdapter(
              child: CircularProgressIndicator(),
            ),
            onEmpty: SliverToBoxAdapter(),
            onError: (e) => SliverToBoxAdapter(),
          ),
          Spacing(height: 15),
          TopicTitle(
            titulo: 'Setores',
            color: ThemeConfig.grey,
          ),
          // CategoriesButton(text: 'Sala de Estar', onPressed: () {}),
          // CategoriesButton(text: 'Cozinha', onPressed: () {}),
          // CategoriesButton(text: 'Sala de Jantar', onPressed: () {}),
          // CategoriesButton(text: 'Quarto', onPressed: () {}),
          // CategoriesButton(text: 'Quarto Infantil', onPressed: () {}),
          // CategoriesButton(text: 'Quarto de Bebê', onPressed: () {}),
          // CategoriesButton(text: 'Quarto Cozinha', onPressed: () {}),
          // CategoriesButton(text: 'Banheiro', onPressed: () {}),
          // CategoriesButton(text: 'Lavanderia', onPressed: () {}),
          // CategoriesButton(text: 'Jardim e Varanda', onPressed: () {}),
          // Spacing(height: 15),
        ],
      ),
    );
  }
}

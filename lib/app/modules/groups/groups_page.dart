// Essenciais
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'dart:developer';

// Controller
import 'package:cazatudo_app/app/modules/groups/group_controller.dart';

// Rotas
import 'package:cazatudo_app/app/core/app_routes/app_routes.dart';

// UI
import 'package:cazatudo_app/app/core/ui/theme_config.dart';

// Widgets Personalizados - AppBar
import 'package:cazatudo_app/app/core/widgets/sliver_app_bar.dart';
import 'package:cazatudo_app/app/core/widgets/custom_app_bar_search.dart';
import 'package:cazatudo_app/app/core/widgets/custom_app_bar_icon.dart';
// Widgets Personalizados
import 'package:cazatudo_app/app/core/widgets/new_categories_button.dart';
import 'package:cazatudo_app/app/core/widgets/spacing.dart';
import 'package:cazatudo_app/app/core/widgets/topic_title.dart';

class GroupsPage extends GetView<GroupController> {
  const GroupsPage({super.key});

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
          TopicTitle(
            titulo: 'Categorias',
            color: ThemeConfig.grey,
          ),
          Obx(
            () {
              return SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final category = controller.categories[index];
                    return NewCategoriesButton(
                      text: category.name,
                      onPressed: () {},
                    );
                  },
                  childCount: controller.categories.length,
                ),
              );
            },
          ),
          Spacing(height: 15),
          TopicTitle(
            titulo: 'Setores',
            color: ThemeConfig.grey,
          ),
          Obx(
            () {
              if (controller.categories.isEmpty) {
                return SliverToBoxAdapter(
                  child: Center(
                    child: Text('Nenhuma categoria disponível'),
                  ),
                );
              }
              return SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final category = controller.sectors[index];
                    log(category.toString());
                    log(index.toString());
                    return NewCategoriesButton(
                      text: category.name,
                      onPressed: () {},
                    );

                    // return null;
                  },
                  childCount: controller.sectors.length,
                ),
              );
            },
          ),
          Spacing(height: 15),
        ],
      ),
    );
  }
}

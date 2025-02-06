// Essenciais
import 'package:cazatudo_app/app/modules/home/widgets/product_tile.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
// Controller
import 'package:cazatudo_app/app/modules/home/home_controller.dart';
// Rotas
import 'package:cazatudo_app/app/core/app_routes/app_routes.dart';
// UI
import 'package:cazatudo_app/app/core/ui/theme_config.dart';
// Widgets Personalizados - AppBar
import 'package:cazatudo_app/app/core/widgets/sliver_app_bar.dart';
import 'package:cazatudo_app/app/core/widgets/custom_app_bar_search.dart';
import 'package:cazatudo_app/app/core/widgets/custom_app_bar_icon.dart';
// Widgets Personalizados
import 'package:cazatudo_app/app/modules/home/widgets/horizontal_products_list.dart';
import 'package:cazatudo_app/app/core/widgets/horizontal_list.dart';
import 'package:cazatudo_app/app/core/widgets/banner_widget.dart';
import 'package:cazatudo_app/app/core/widgets/topic_title.dart';
import 'package:cazatudo_app/app/modules/home/widgets/horizontal_categories_list.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

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
                  Get.toNamed(AppRoutes.cart);
                },
              ),
              const SizedBox(width: 15),
            ],
          ),
          //* BANNER
          BannerWidget(pageController: controller.controlPage),
          //* CATEGORIAS
          TopicTitle(titulo: 'Categorias', color: ThemeConfig.orange1),
          HorizontalList(
            children: [
              HorizontalCategoriesList(
                texto: 'Categorias',
                image: 'assets/images/menuCards/categorias.png',
              ),
              HorizontalCategoriesList(
                texto: 'Ofertas',
                image: 'assets/images/menuCards/ofertas.png',
              ),
              HorizontalCategoriesList(
                texto: 'Relâmpago',
                image: 'assets/images/menuCards/relampago.png',
              ),
              HorizontalCategoriesList(
                texto: 'Cupons',
                image: 'assets/images/menuCards/cupons.png',
              ),
              HorizontalCategoriesList(
                texto: 'Frete',
                image: 'assets/images/menuCards/frete.png',
              ),
            ],
          ),
          //* PRODUCTS LIST
          TopicTitle(titulo: 'Novidades', color: ThemeConfig.orange1),
          Obx(
            () {
              return SliverToBoxAdapter(
                child: SizedBox(
                  height: 270, // Defina um tamanho adequado para os itens
                  child: ListView.builder(
                    scrollDirection:
                        Axis.horizontal, // Define a rolagem horizontal
                    itemCount: controller.menu.length,
                    itemBuilder: (context, index) {
                      final prod = controller.menu[index];
                      return HorizontalProductsList(product: prod);
                    },
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

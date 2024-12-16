// Essenciais
import 'package:cazatudo_app/app/core/widgets/horizontal_list.dart';
import 'package:cazatudo_app/app/core/widgets/horizontal_products_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Rotas
import 'package:cazatudo_app/app/core/app_routes/app_routes.dart';
// UI
import 'package:cazatudo_app/app/core/ui/theme_config.dart';

// Widgets Personalizados - AppBar
import 'package:cazatudo_app/app/core/widgets/sliver_app_bar.dart';
import 'package:cazatudo_app/app/core/widgets/custom_app_bar_search.dart';
import 'package:cazatudo_app/app/core/widgets/custom_app_bar_icon.dart';
// Widgets Personalizados
import 'package:cazatudo_app/app/core/widgets/banner_widget.dart';
import 'package:cazatudo_app/app/core/widgets/topic_title.dart';
import 'package:cazatudo_app/app/core/widgets/horizontal_categories_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

final _controlPage = PageController();

class _HomePageState extends State<HomePage> {
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
          BannerWidget(pageController: _controlPage),
          TopicTitle(titulo: 'Categorias', color: ThemeConfig.orange1),
          HorizontalList(
            children: [
              HorizontalCategoriesList(texto: 'Categorias'),
              HorizontalCategoriesList(texto: 'Ofertas'),
              HorizontalCategoriesList(texto: 'Relâmpago'),
              HorizontalCategoriesList(texto: 'Cupons'),
              HorizontalCategoriesList(texto: 'Frete'),
            ],
          ),
          TopicTitle(titulo: 'Novidades', color: ThemeConfig.orange1),
          HorizontalList(
            children: [
              HorizontalProductsList(
                texto: 'Cama exemplo',
                valorAntigo: '700,00',
                valorPix: '500,00',
              ),
              HorizontalProductsList(
                texto: 'Guarda roupa exemplo',
                valorAntigo: '1500,00',
                valorPix: '1200,00',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

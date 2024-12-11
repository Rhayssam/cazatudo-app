// Essenciais
import 'package:flutter/material.dart';

// UI
import 'package:cazatudo_app/app/core/ui/theme_config.dart';

// Widgets Personalizados - AppBar
import 'package:cazatudo_app/app/core/widgets/sliver_app_bar.dart';
import 'package:cazatudo_app/app/core/widgets/custom_app_bar_search.dart';
import 'package:cazatudo_app/app/core/widgets/custom_app_bar_icon.dart';
// Widgets Personalizados
import 'package:cazatudo_app/app/modules/home/banner_widget.dart';
import 'package:cazatudo_app/app/core/widgets/topic_title.dart';
import 'package:cazatudo_app/app/core/widgets/horizontal_categories_list.dart';
import 'package:cazatudo_app/app/core/widgets/vertical_products_list.dart';

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
                icon: Icon(
                  Icons.shopping_cart,
                  color: ThemeConfig.white,
                  size: 35,
                ),
              ),
              const SizedBox(width: 15),
            ],
          ),
          BannerWidget(
            pageController: _controlPage,
          ),
          TopicTitle(titulo: 'Categorias'),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    HorizontalCategoriesList(texto: 'Categorias'),
                    HorizontalCategoriesList(texto: 'Ofertas'),
                    HorizontalCategoriesList(texto: 'Relâmpago'),
                    HorizontalCategoriesList(texto: 'Cupons'),
                    HorizontalCategoriesList(texto: 'Frete'),
                  ],
                ),
              ),
            ),
          ),
          TopicTitle(titulo: 'Novidades'),
          VerticalProductsList(),
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

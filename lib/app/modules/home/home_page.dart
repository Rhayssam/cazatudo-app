// Essenciais
import 'package:flutter/material.dart';

// UI
import 'package:cazatudo_app/app/core/ui/theme_config.dart';
import 'package:cazatudo_app/app/core/ui/custom_text_styles.dart';

// Widgets Personalizados
import 'package:cazatudo_app/app/modules/home/banner_widget.dart';

// Widgets Personalizados - AppBar
import 'package:cazatudo_app/app/core/widgets/custom_app_bar.dart';
import 'package:cazatudo_app/app/core/widgets/custom_app_bar_search.dart';
import 'package:cazatudo_app/app/core/widgets/custom_app_bar_cart.dart';

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
      appBar: CustomAppBar(
        actions: [
          CustomAppBarSearch(),
          CustomAppBarCart(),
        ],
      ),
      //* Início da tela
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            BannerWidget(
              pageController: _controlPage,
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Text(
                  'Novidades',
                  style: CustomTextStyles.mediumText20
                      .copyWith(color: ThemeConfig.orange1),
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate((context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: ThemeConfig.lightOrange,
                      boxShadow: [
                        BoxShadow(
                          color: ThemeConfig.lightGrey,
                          offset: Offset(3, 1),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Center(
                          child: Text(
                            'Produto',
                            style: CustomTextStyles.smallText16
                                .copyWith(color: ThemeConfig.white),
                          ),
                        )
                      ],
                    ),
                  );
                }, childCount: 6),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 300,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 10,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Essenciais
import 'package:cazatudo_app/app/core/app_routes/app_routes.dart';
import 'package:cazatudo_app/app/core/ui/custom_text_styles.dart';
import 'package:flutter/material.dart';

// UI
import 'package:cazatudo_app/app/core/ui/theme_config.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

final _control_page = PageController();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeConfig.background,
      appBar: AppBar(
        backgroundColor: ThemeConfig.orange1,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Expanded(
              flex: 8,
              child: InkWell(
                onTap: () {
                  Get.toNamed(AppRoutes.search);
                },
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(23),
                    color: ThemeConfig.white,
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.search,
                        color: ThemeConfig.lightGrey,
                        size: 25,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Buscar na Cazatudo',
                        style: CustomTextStyles.smallText16
                            .copyWith(color: ThemeConfig.lightGrey),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 1,
              child: InkWell(
                onTap: () {
                  Get.toNamed(AppRoutes.cart);
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    Icons.shopping_cart,
                    color: ThemeConfig.white,
                    size: 35,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      //TODO Externalizar a AppBar
      //* Início da tela
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    child: PageView(
                      controller: _control_page,
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: ThemeConfig.grey),
                          child: Center(
                            child: Text(
                              'Colocar anúncio ou oferta',
                              style: CustomTextStyles.mediumText18
                                  .copyWith(color: ThemeConfig.white),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: ThemeConfig.grey),
                          child: Center(
                            child: Text(
                              'Colocar anúncio ou oferta',
                              style: CustomTextStyles.mediumText18
                                  .copyWith(color: ThemeConfig.white),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: ThemeConfig.grey),
                          child: Center(
                            child: Text(
                              'Colocar anúncio ou oferta',
                              style: CustomTextStyles.mediumText18
                                  .copyWith(color: ThemeConfig.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SmoothPageIndicator(
                  controller: _control_page,
                  count: 3,
                  effect: WormEffect(
                    dotHeight: 11,
                    dotWidth: 11,
                    activeDotColor: ThemeConfig.orange1,
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}

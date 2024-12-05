// Essenciais
import 'package:flutter/material.dart';

// UI
import 'package:cazatudo_app/app/core/ui/theme_config.dart';
import 'package:cazatudo_app/app/core/ui/custom_text_styles.dart';

// Extensões
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BannerWidget extends StatelessWidget {
  final PageController pageController;

  const BannerWidget({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Container(
              height: 200,
              width: double.infinity,
              child: PageView(
                controller: pageController,
                scrollDirection: Axis.horizontal,
                children: [
                  _buildAdContainer('Colocar anúncio ou oferta'),
                  _buildAdContainer('Colocar anúncio ou oferta'),
                  _buildAdContainer('Colocar anúncio ou oferta'),
                ],
              ),
            ),
          ),
          SmoothPageIndicator(
            controller: pageController,
            count: 3,
            effect: WormEffect(
              dotHeight: 11,
              dotWidth: 11,
              activeDotColor: ThemeConfig.orange1,
              dotColor: ThemeConfig.lightOrange,
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildAdContainer(String text) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: ThemeConfig.lightOrange,
    ),
    child: Center(
      child: Text(
        'Colocar anúncio ou oferta',
        style: CustomTextStyles.mediumText18.copyWith(color: ThemeConfig.white),
      ),
    ),
  );
}

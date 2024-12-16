import 'package:cazatudo_app/app/core/app_routes/app_routes.dart';
import 'package:cazatudo_app/app/core/ui/theme_config.dart';
import 'package:cazatudo_app/app/core/widgets/custom_app_bar_icon.dart';
import 'package:cazatudo_app/app/core/widgets/custom_app_bar_title.dart';
import 'package:cazatudo_app/app/core/widgets/empty_view.dart';
import 'package:cazatudo_app/app/core/widgets/sliver_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeConfig.background,
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar(
            actions: [
              SizedBox(width: 15),
              CustomAppBarIcon(
                  icon: Icons.arrow_back_ios,
                  onPressed: () {
                    Get.toNamed(AppRoutes.navigation);
                  }),
              CustomAppBarTitle(title: 'Produtos'),
            ],
          ),
          EmptyView(
            text: 'Ops!... Não foi possível concluir sua busca.',
            icon: Icons.sentiment_dissatisfied_sharp,
          )
        ],
      ),
    );
  }
}

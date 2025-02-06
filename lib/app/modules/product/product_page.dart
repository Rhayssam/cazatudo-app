// Essenciais
import 'package:cazatudo_app/app/modules/product/product_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

// Rotas
import 'package:cazatudo_app/app/core/app_routes/app_routes.dart';

// UI
import 'package:cazatudo_app/app/core/ui/theme_config.dart';

// Widgets
import 'package:cazatudo_app/app/core/widgets/custom_app_bar_icon.dart';
import 'package:cazatudo_app/app/core/widgets/custom_app_bar_title.dart';
import 'package:cazatudo_app/app/core/widgets/empty_view.dart';
import 'package:cazatudo_app/app/core/widgets/sliver_app_bar.dart';

class ProductPage extends GetView<ProductController> {
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
          //* Produto não encontrado
          // EmptyView(
          //   text: 'Ops!... Não foi possível concluir sua busca.',
          //   icon: Icons.sentiment_dissatisfied_sharp,
          // ),
          SliverToBoxAdapter(
            child: LayoutBuilder(
              builder: (context, constraints) {
                return SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: context.width,
                        height: context.heightTransformer(reducedBy: 60),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(controller.product.image),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// Essenciais
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Rotas
import 'package:cazatudo_app/app/core/app_routes/app_routes.dart';

// UI
import 'package:cazatudo_app/app/core/ui/theme_config.dart';

class CustomAppBarCart extends StatelessWidget {
  const CustomAppBarCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        onTap: () {
          Get.toNamed(AppRoutes.cart);
        },
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
          ),
          child: Icon(
            Icons.shopping_cart,
            color: ThemeConfig.white,
            size: 35,
          ),
        ),
      ),
    );
  }
}

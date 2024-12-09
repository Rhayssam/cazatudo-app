import 'package:cazatudo_app/app/core/app_routes/app_routes.dart';
import 'package:cazatudo_app/app/core/ui/custom_text_styles.dart';
import 'package:cazatudo_app/app/core/ui/theme_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ThemeConfig.orange1,
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          Expanded(
            flex: 8,
            child: InkWell(
              borderRadius: BorderRadius.circular(20),
              onTap: () {
                Get.toNamed(AppRoutes.search);
              },
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
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
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

// Essenciais
import 'package:get/get.dart';
import 'package:flutter/material.dart';

// Rotas
import 'package:cazatudo_app/app/core/app_routes/app_routes.dart';

// UI
import 'package:cazatudo_app/app/core/ui/custom_text_styles.dart';
import 'package:cazatudo_app/app/core/ui/theme_config.dart';

class CustomAppBarSearch extends StatelessWidget {
  const CustomAppBarSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
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
                width: 15,
              ),
              Icon(
                Icons.search,
                color: ThemeConfig.lightGrey,
                size: 25,
              ),
              const SizedBox(
                width: 15,
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
    );
  }
}

// Essenciais
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Rotas
import 'package:cazatudo_app/app/core/app_routes/app_routes.dart';

class CustomAppBarIcon extends StatelessWidget {
  final Icon? icon;
  const CustomAppBarIcon({
    Key? key,
    this.icon,
  }) : super(key: key);

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
          child: icon,
        ),
      ),
    );
  }
}

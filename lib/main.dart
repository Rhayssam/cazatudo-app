// Essenciais
import 'package:get/get.dart';
import 'package:flutter/material.dart';

// Gerenciamento de Rotas
import 'package:cazatudo_app/app/core/app_routes/app_pages.dart';
import 'package:cazatudo_app/app/core/app_routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Cazatudo',
      initialRoute: AppRoutes.splash,
      getPages: AppPages.pages,
    );
  }
}

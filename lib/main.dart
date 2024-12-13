// Essenciais
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

// Gerenciamento de Rotas
import 'package:cazatudo_app/app/core/app_routes/app_pages.dart';
import 'package:cazatudo_app/app/core/app_routes/app_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Cazatudo',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.splash,
      getPages: AppPages.pages,
    );
  }
}

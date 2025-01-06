// Essenciais
import 'package:cazatudo_app/app/core/bindings/application_bindings.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

// Gerenciamento de Rotas
import 'package:cazatudo_app/app/core/app_routes/app_pages.dart';
import 'package:cazatudo_app/app/core/app_routes/app_routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
      initialBinding: ApplicationBindings(),
    );
  }
}

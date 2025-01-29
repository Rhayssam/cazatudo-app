// Essenciais
import 'package:cazatudo_app/app/core/ui/theme_config.dart';
import 'package:get/get.dart';
import 'package:cazatudo_app/app/core/bindings/application_bindings.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

// Gerenciamento de Rotas
import 'package:cazatudo_app/app/core/app_routes/app_pages.dart';
import 'package:cazatudo_app/app/core/app_routes/app_routes.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  await GetStorage.init();
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
      theme: ThemeConfig.theme,
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.splash,
      getPages: AppPages.pages,
      initialBinding: ApplicationBindings(),
    );
  }
}

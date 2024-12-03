import 'package:cazatudo_app/app/core/app_routes/app_routes.dart';
import 'package:cazatudo_app/app/modules/home/home_page.dart';
import 'package:cazatudo_app/app/modules/onboard/onboard_page.dart';
import 'package:cazatudo_app/app/modules/sign_in/sign_in_page.dart';
import 'package:cazatudo_app/app/modules/sign_up/sign_up_page.dart';
import 'package:cazatudo_app/app/modules/splash/splash_page.dart';
import 'package:get/get.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.initial,
      page: () => OnboardPage(),
    ),
    GetPage(
      name: AppRoutes.splash,
      page: () => SplashPage(),
    ),
    GetPage(
      name: AppRoutes.signIn,
      page: () => SignInPage(),
    ),
    GetPage(
      name: AppRoutes.signUp,
      page: () => SignUpPage(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => HomePage(),
    ),
  ];
}

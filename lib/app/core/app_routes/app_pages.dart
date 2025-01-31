// Essenciais
import 'package:cazatudo_app/app/modules/auth/login/login_bindings.dart';
import 'package:cazatudo_app/app/modules/auth/sign_up/sign_up_bindings.dart';
import 'package:cazatudo_app/app/modules/onboard/onboard_bindings.dart';
import 'package:cazatudo_app/app/modules/profile/profile_bindings.dart';
import 'package:get/get.dart';

// Rotas
import 'package:cazatudo_app/app/core/app_routes/app_routes.dart';
import 'package:cazatudo_app/app/modules/navigation/navigation_bindings.dart';
import 'package:cazatudo_app/app/modules/navigation/navigation_page.dart';
import 'package:cazatudo_app/app/modules/product/product_page.dart';
import 'package:cazatudo_app/app/modules/home/home_page.dart';
import 'package:cazatudo_app/app/modules/onboard/onboard_page.dart';
import 'package:cazatudo_app/app/modules/auth/login/login_page.dart';
import 'package:cazatudo_app/app/modules/auth/sign_up/sign_up_page.dart';
import 'package:cazatudo_app/app/modules/splash/splash_page.dart';
import 'package:cazatudo_app/app/modules/notifies/notification_page.dart';
import 'package:cazatudo_app/app/modules/profile/profile_page.dart';
import 'package:cazatudo_app/app/modules/search/search_page.dart';
import 'package:cazatudo_app/app/modules/cart/cart_page.dart';
import 'package:cazatudo_app/app/modules/groups/groups_page.dart';
import 'package:cazatudo_app/app/modules/favorite/favorite_page.dart';

// Para utilizar as rotas basta apenas utilizar o comando
// Get.toNamed(AppRoutes.nomeDaRota);
// O nome da rota está localizado na pasta app_routes

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.initial,
      page: () => OnboardPage(),
      binding: OnboardBindings(),
    ),
    GetPage(
      name: AppRoutes.splash,
      page: () => SplashPage(),
    ),
    GetPage(
      name: AppRoutes.login,
      page: () => LoginPage(),
      binding: LoginBindings(),
    ),
    GetPage(
      name: AppRoutes.signUp,
      page: () => SignUpPage(),
      binding: SignUpBindings(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => HomePage(),
    ),
    GetPage(
      name: AppRoutes.search,
      page: () => SearchPage(),
    ),
    GetPage(
      name: AppRoutes.cart,
      page: () => CartPage(),
    ),
    GetPage(
      name: AppRoutes.categories,
      page: () => GroupsPage(),
    ),
    GetPage(
      name: AppRoutes.favorites,
      page: () => FavoritePage(),
    ),
    GetPage(
      name: AppRoutes.notification,
      page: () => NotificationPage(),
    ),
    GetPage(
      name: AppRoutes.profile,
      page: () => ProfilePage(),
      binding: ProfileBindings(),
    ),
    GetPage(
      name: AppRoutes.navigation,
      page: () => NavigationPage(),
      binding: NavigationBindings(),
    ),
    GetPage(
      name: AppRoutes.product,
      page: () => ProductPage(),
    ),
  ];
}

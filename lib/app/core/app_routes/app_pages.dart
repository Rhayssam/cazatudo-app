// Essenciais
import 'package:cazatudo_app/app/modules/cart/cart_page.dart';
import 'package:cazatudo_app/app/modules/categories/categories_page.dart';
import 'package:cazatudo_app/app/modules/favorite/favorite_page.dart';
import 'package:cazatudo_app/app/modules/home/navigation_screen.dart';
import 'package:cazatudo_app/app/modules/notifies/notification_page.dart';
import 'package:cazatudo_app/app/modules/profile/profile_page.dart';
import 'package:cazatudo_app/app/modules/search/search_page.dart';
import 'package:get/get.dart';

// Rotas
import 'package:cazatudo_app/app/core/app_routes/app_routes.dart';
import 'package:cazatudo_app/app/modules/home/home_page.dart';
import 'package:cazatudo_app/app/modules/onboard/onboard_page.dart';
import 'package:cazatudo_app/app/modules/sign_in/sign_in_page.dart';
import 'package:cazatudo_app/app/modules/sign_up/sign_up_page.dart';
import 'package:cazatudo_app/app/modules/splash/splash_page.dart';

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
      page: () => CategoriesPage(),
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
      page: () => ProfilePage(),
      name: AppRoutes.profile,
    ),
    GetPage(
      name: AppRoutes.navigation,
      page: () => NavigationScreen(),
    ),
  ];
}

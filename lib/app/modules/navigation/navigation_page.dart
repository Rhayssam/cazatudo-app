// Essenciais
import 'package:get/get.dart';
import 'package:flutter/material.dart';

// UI
import 'package:cazatudo_app/app/core/ui/custom_text_styles.dart';
import 'package:cazatudo_app/app/core/ui/theme_config.dart';

// Controller
import 'package:cazatudo_app/app/modules/navigation/navigation_controller.dart';

// Pages
import 'package:cazatudo_app/app/modules/home/home_page.dart';
import 'package:cazatudo_app/app/modules/groups/groups_page.dart';
import 'package:cazatudo_app/app/modules/favorite/favorite_page.dart';
import 'package:cazatudo_app/app/modules/notifies/notification_page.dart';
import 'package:cazatudo_app/app/modules/login/login_page.dart';

class NavigationPage extends GetView<NavigationController> {
  NavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        child: Obx(() {
          return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: ThemeConfig.orange1,
            selectedItemColor: ThemeConfig.white,
            unselectedItemColor: ThemeConfig.lightOrange,
            selectedLabelStyle: CustomTextStyles.smallTextBottomNavBar,
            currentIndex: controller.currentIndex.value,
            onTap: controller.navigationTapped,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home, size: 30),
                label: 'Início',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.category, size: 30),
                label: 'Categorias',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite, size: 30),
                label: 'Favoritos',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications, size: 30),
                label: 'Notificações',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person, size: 30),
                label: 'Minha Conta',
              ),
            ],
          );
        }),
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: controller.pageController,
        onPageChanged: controller.onPageChanged,
        children: [
          HomePage(),
          GroupsPage(),
          FavoritePage(),
          NotificationPage(),
          LoginPage(),
          // ProfilePage()
        ],
      ),
    );
  }
}

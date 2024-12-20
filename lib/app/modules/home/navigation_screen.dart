import 'package:cazatudo_app/app/core/ui/custom_text_styles.dart';
import 'package:cazatudo_app/app/core/ui/theme_config.dart';
import 'package:flutter/material.dart';
import 'package:cazatudo_app/app/modules/categories/categories_page.dart';
import 'package:cazatudo_app/app/modules/favorite/favorite_page.dart';
import 'package:cazatudo_app/app/modules/home/home_page.dart';
import 'package:cazatudo_app/app/modules/notifies/notification_page.dart';
import 'package:cazatudo_app/app/modules/login/login_page.dart';
import 'package:cazatudo_app/app/modules/categories/category_controller.dart';
import 'package:get/get.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

int _currentIndex = 0;

class _NavigationScreenState extends State<NavigationScreen> {
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    // Injetando o CategoryController apenas uma vez, usando Get.put.
    Get.put(CategoryController(repository: Get.find()));

    pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  // Atualiza o índice da página
  onPageChanged(int page) {
    setState(() {
      _currentIndex = page;
    });
  }

  // Muda a página quando um item é selecionado no BottomNavigationBar
  navigationTapped(int page) {
    pageController.jumpToPage(page);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: ThemeConfig.orange1,
          selectedItemColor: ThemeConfig.white,
          unselectedItemColor: ThemeConfig.lightOrange,
          selectedLabelStyle: CustomTextStyles.smallTextBottomNavBar,
          currentIndex: _currentIndex,
          onTap: navigationTapped,
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
        ),
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: onPageChanged,
        children: [
          HomePage(),
          CategoriesPage(),
          FavoritePage(),
          NotificationPage(),
          LoginPage(),
          // ProfilePage()
        ],
      ),
    );
  }
}

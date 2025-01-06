// Essenciais
import 'package:get/get.dart';
import 'package:flutter/widgets.dart';

class NavigationController extends GetxController {
  final RxInt currentIndex = 0.obs;
  final PageController pageController = PageController();
  onPageChanged(int page) {
    currentIndex.value = page;
  }

  navigationTapped(int page) {
    currentIndex.value = page;
    pageController.jumpToPage(page);
  }
}

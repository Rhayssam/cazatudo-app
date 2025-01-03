import 'package:cazatudo_app/app/modules/groups/group_controller.dart';
import 'package:cazatudo_app/app/modules/home/home_controller.dart';
import 'package:cazatudo_app/app/repositories/group_repository.dart';
import 'package:cazatudo_app/app/repositories/product_repository.dart';
import 'package:get/get.dart';
import './navigation_controller.dart';

class NavigationBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(NavigationController());

    //* Group
    Get.lazyPut(() => GroupRepository(restClient: Get.find()));
    Get.put(GroupController(repository: Get.find()));

    //* Home
    Get.lazyPut(() => ProductRepository(restClient: Get.find()));
    Get.put(HomeController(repository: Get.find()));
  }
}

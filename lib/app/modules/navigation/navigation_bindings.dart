import 'package:cazatudo_app/app/core/rest_client/rest_client.dart';
import 'package:cazatudo_app/app/modules/categories/category_controller.dart';
import 'package:cazatudo_app/app/repositories/category_repository.dart';
import 'package:get/get.dart';
import './navigation_controller.dart';

class NavigationBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(NavigationController());
    //* Category
    Get.lazyPut(() => CategoryRepository(restClient: Get.find()));
    Get.put(CategoryController(repository: Get.find()));
  }
}

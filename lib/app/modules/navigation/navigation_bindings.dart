// Essenciais
import 'package:cazatudo_app/app/modules/profile/profile_controller.dart';
import 'package:cazatudo_app/app/repositories/products/product_repository.dart';
import 'package:cazatudo_app/app/repositories/products/product_repository_impl.dart';
import 'package:get/get.dart';

// Controller
import './navigation_controller.dart';
import 'package:cazatudo_app/app/modules/groups/group_controller.dart';
import 'package:cazatudo_app/app/modules/home/home_controller.dart';

// Repository
import 'package:cazatudo_app/app/repositories/group_repository.dart';

class NavigationBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(NavigationController());

    //* Group
    Get.lazyPut(() => GroupRepository(restClient: Get.find()));
    Get.put(GroupController(repository: Get.find()));

    //* Home
    Get.lazyPut<ProductRepository>(
        () => ProductRepositoryImpl(restClient: Get.find()));
    Get.put(HomeController(productRepository: Get.find()));

    //* Profile
    Get.put(ProfileController());
  }
}

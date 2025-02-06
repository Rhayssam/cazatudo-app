import 'package:cazatudo_app/app/modules/product/product_controller.dart';
import 'package:get/get.dart';

class ProductBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(ProductController());
  }
}

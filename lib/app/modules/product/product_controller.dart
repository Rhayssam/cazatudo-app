import 'package:cazatudo_app/app/models/product_model.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  final _product = Rx<ProductModel>(Get.arguments);

  ProductModel get product => _product.value;
}

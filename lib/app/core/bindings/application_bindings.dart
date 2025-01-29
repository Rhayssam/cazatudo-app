// Essenciais
import 'package:get/get.dart';
import 'package:cazatudo_app/app/core/rest_client/rest_client.dart';

class ApplicationBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RestClient(), fenix: true);
  }
}

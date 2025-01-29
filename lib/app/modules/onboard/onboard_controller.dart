import 'package:cazatudo_app/app/core/services/auth_service.dart';
import 'package:get/get.dart';

class OnboardController extends GetxController {
  void checkLogged() {
    Get.putAsync(() => AuthService().init());
  }
}

import 'package:cazatudo_app/app/modules/onboard/onboard_controller.dart';
import 'package:get/get.dart';

class OnboardBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(OnboardController());
  }
}

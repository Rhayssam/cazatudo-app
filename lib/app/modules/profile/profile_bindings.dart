import 'package:cazatudo_app/app/modules/profile/profile_controller.dart';
import 'package:get/get.dart';

class ProfileBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController>(() => ProfileController());
  }
}

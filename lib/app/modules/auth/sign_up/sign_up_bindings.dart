import 'package:cazatudo_app/app/modules/auth/sign_up/sign_up_controller.dart';
import 'package:cazatudo_app/app/repositories/auth/auth_repository.dart';
import 'package:cazatudo_app/app/repositories/auth/auth_repository_impl.dart';
import 'package:get/get.dart';

class SignUpBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthRepository>(
      () => AuthRepositoryImpl(
        restClient: Get.find(),
      ),
    );
    Get.lazyPut(
      () => SignUpController(authRepository: Get.find()),
    );
  }
}

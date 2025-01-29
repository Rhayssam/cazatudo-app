import 'package:cazatudo_app/app/models/user_model.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  final _name = Rx<UserModel>(Get.arguments);
}

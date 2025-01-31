import 'dart:developer';

import 'package:cazatudo_app/app/core/constants/constants.dart';
import 'package:cazatudo_app/app/models/user_model.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ProfileController extends GetxController {
  final _getStorage = GetStorage();

  final userName = ''.obs;
  final userEmail = ''.obs;

  @override
  void onInit() {
    super.onInit();
    loadUserData();
  }

  void loadUserData() {
    var user = _getStorage.read(Constants.USER_KEY);
    log(user.runtimeType.toString());
    if (user != null && user is Map<String, dynamic>) {
      userName.value = user['name'] ?? 'Usuário';
      userEmail.value = user['email'] ?? 'Email não encontrado';
    }
  }
}

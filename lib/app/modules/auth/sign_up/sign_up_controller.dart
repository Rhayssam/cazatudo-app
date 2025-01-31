import 'dart:developer';

import 'package:cazatudo_app/app/core/constants/constants.dart';
import 'package:cazatudo_app/app/core/mixins/loader_mixin.dart';
import 'package:cazatudo_app/app/core/mixins/messages_mixin.dart';
import 'package:cazatudo_app/app/core/rest_client/rest_client.dart';
import 'package:cazatudo_app/app/repositories/auth/auth_repository.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SignUpController extends GetxController with LoaderMixin, MessagesMixin {
  final AuthRepository _authRepository;

  final _loading = false.obs;
  final _message = Rxn<MessageModel>();

  SignUpController({
    required AuthRepository authRepository,
  }) : _authRepository = authRepository;

  @override
  void onInit() {
    loaderListener(_loading);
    messageListener(_message);
    super.onInit();
  }

  Future<void> register({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      _loading.toggle();
      final userLogged = await _authRepository.register(name, email, password);
      _loading.toggle();
      GetStorage().write(Constants.USER_KEY, {
        'id': userLogged.id,
        'name': userLogged.name,
        'email': userLogged.email,
      });
    } on RestClientException catch (e, s) {
      _loading.toggle();
      log('Erro ao registrar conta', error: e, stackTrace: s);
      _message(
        MessageModel(
          title: 'Erro',
          message: e.message,
          type: MessageType.error,
        ),
      );
    } catch (e, s) {
      _loading.toggle();
      log('Erro ao registrar usuário', error: e, stackTrace: s);
      _message(
        MessageModel(
          title: 'Erro',
          message: 'Erro ao registrar conta',
          type: MessageType.error,
        ),
      );
    }
  }
}

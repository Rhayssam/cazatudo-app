import 'dart:developer';

import 'package:cazatudo_app/app/models/group_model.dart';
import 'package:cazatudo_app/app/repositories/group_repository.dart';
import 'package:get/get.dart';

class GroupController extends GetxController with StateMixin<List<GroupModel>> {
  final GroupRepository _repository;

  GroupController({
    required GroupRepository repository,
  }) : _repository = repository;

  void onReady() {
    _findAll();
    super.onReady();
  }

  Future<void> _findAll() async {
    try {
      change([], status: RxStatus.loading());
      final users = await _repository.findAll();
      var statusReturn = RxStatus.success();
      if (users.isEmpty) {
        statusReturn = RxStatus.empty();
      }
      change(users, status: statusReturn);
    } catch (e, s) {
      log('Erro ao buscar grupos', error: e, stackTrace: s);
      change(state, status: RxStatus.error());
    }
  }

  void register() {}
  void updateUser(GroupModel group) {}
  void delete(GroupModel group) {}
}

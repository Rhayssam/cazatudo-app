import 'dart:developer';

import 'package:cazatudo_app/app/models/category_model.dart';
import 'package:cazatudo_app/app/repositories/category_repository.dart';
import 'package:get/get.dart';

class CategoryController extends GetxController
    with StateMixin<List<CategoryModel>> {
  final CategoryRepository _repository;

  CategoryController({
    required CategoryRepository repository,
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
      log('Erro ao buscar categorias', error: e, stackTrace: s);
      change(state, status: RxStatus.error());
    }
  }

  void register() {}
  void updateUser(CategoryModel category) {}
  void delete(CategoryModel category) {}
}

// Essenciais
import 'package:get/get.dart';
import 'dart:developer';

import 'package:cazatudo_app/app/models/group_model.dart';
import 'package:cazatudo_app/app/models/product_model.dart';
import 'package:cazatudo_app/app/repositories/product_repository.dart';

class HomeController extends GetxController with StateMixin<List<GroupModel>> {
  final ProductRepository _repository;

  HomeController({
    required ProductRepository repository,
  }) : _repository = repository;

  final RxList<ProductModel> products = RxList.empty();

  void onReady() {
    super.onReady();
    _findAll();
  }

  Future<void> _findAll() async {
    try {
      final product = await _repository.findAll();
      products.value = product;
    } catch (e, s) {
      log('Erro ao buscar produtos', error: e, stackTrace: s);
    }
  }

  void register() {}
  void updateUser(ProductModel product) {}
  void delete(ProductModel product) {}
}

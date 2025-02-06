// Essenciais
import 'package:cazatudo_app/app/core/mixins/loader_mixin.dart';
import 'package:cazatudo_app/app/core/mixins/messages_mixin.dart';
import 'package:cazatudo_app/app/repositories/products/product_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:developer';

// Model
import 'package:cazatudo_app/app/models/group_model.dart';
import 'package:cazatudo_app/app/models/product_model.dart';
// Repository

class HomeController extends GetxController with LoaderMixin, MessagesMixin {
  final ProductRepository _productRepository;

  final _loading = false.obs;
  final _message = Rxn<MessageModel>();
  final menu = <ProductModel>[].obs;
  final controlPage = PageController();

  HomeController({
    required ProductRepository productRepository,
  }) : _productRepository = productRepository;

  @override
  void onInit() {
    super.onInit();
    loaderListener(_loading);
    messageListener(_message);
  }

  @override
  Future<void> onReady() async {
    super.onReady();
    try {
      _loading.toggle();
      await findAllProducts();
      _loading.toggle();
    } catch (e, s) {
      _loading.toggle();
      log('Erro ao buscar produtos', error: e, stackTrace: s);
      _message(
        MessageModel(
            title: 'Erro',
            message: 'Erro ao buscar menu',
            type: MessageType.error),
      );
    }
  }

  Future<void> findAllProducts() async {
    final products = await _productRepository.findAll();
    menu.assignAll(products);
  }

  Future<void> refreshPage() async {
    try {
      await findAllProducts();
    } catch (e, s) {
      log('Erro ao buscar produtos', error: e, stackTrace: s);
      _message(
        MessageModel(
            title: 'Erro',
            message: 'Erro ao buscar menu',
            type: MessageType.error),
      );
    }
  }
}

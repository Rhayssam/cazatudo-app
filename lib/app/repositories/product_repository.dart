import 'package:get/get.dart';
import 'dart:developer';

import 'package:cazatudo_app/app/models/product_model.dart';

import 'package:cazatudo_app/app/core/rest_client/rest_client.dart';

class ProductRepository extends GetConnect {
  final RestClient restClient;
  ProductRepository({
    required this.restClient,
  });

  Future<List<ProductModel>> findAll() async {
    final result = await restClient.get('/product');
    log(result.request!.url.toString());
    if (result.hasError) {
      throw Exception('Erro ao buscar Produto (${result.statusText})');
    }
    return result.body
        .map<ProductModel>((product) => ProductModel.fromMap(product))
        .toList();
  }
}

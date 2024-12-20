import 'dart:developer';

import 'package:cazatudo_app/app/models/category_model.dart';
import 'package:get/get.dart';

class CategoryRepository extends GetConnect {
  final restClient = GetConnect();

  Future<List<CategoryModel>> findAll() async {
    final result = await restClient.get('http://10.24.24.155:8080/categorias');
    log(result.request!.url.toString());
    if (result.hasError) {
      throw Exception('Erro ao buscar Categoria (${result.statusText})');
    }
    return result.body
        .map<CategoryModel>((category) => CategoryModel.fromMap(category))
        .toList();
  }
}

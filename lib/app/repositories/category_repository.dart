// Essenciais
import 'package:get/get.dart';
import 'dart:developer';
import 'package:cazatudo_app/app/core/rest_client/rest_client.dart';

// Model
import 'package:cazatudo_app/app/models/category_model.dart';

class CategoryRepository extends GetConnect {
  final RestClient restClient;
  CategoryRepository({
    required this.restClient,
  });

  Future<List<CategoryModel>> findAll() async {
    final result = await restClient.get('/categorias');
    log(result.request!.url.toString());
    if (result.hasError) {
      throw Exception('Erro ao buscar Categoria (${result.statusText})');
    }
    return result.body
        .map<CategoryModel>((category) => CategoryModel.fromMap(category))
        .toList();
  }
}

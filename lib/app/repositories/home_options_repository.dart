// Essenciais
import 'package:get/get.dart';
import 'dart:developer';
import 'package:cazatudo_app/app/core/rest_client/rest_client.dart';

// Model
import 'package:cazatudo_app/app/models/home_options_model.dart';

class HomeOptionsRepository extends GetConnect {
  final RestClient restClient;
  HomeOptionsRepository({
    required this.restClient,
  });

  Future<List<HomeOptionsModel>> findAll() async {
    final result = await restClient.get('/homeOptions');
    if (result.hasError) {
      throw Exception('Erro ao buscar opções da Home(${result.statusText})');
    }
    return result.body
        .map<HomeOptionsModel>(
            (homeOption) => HomeOptionsModel.fromMap(homeOption))
        .toList();
  }
}

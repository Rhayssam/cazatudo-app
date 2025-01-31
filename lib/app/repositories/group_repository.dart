// Essenciais
import 'package:get/get.dart';
import 'dart:developer';
import 'package:cazatudo_app/app/core/rest_client/rest_client.dart';

// Model
import 'package:cazatudo_app/app/models/group_model.dart';

class GroupRepository extends GetConnect {
  final RestClient restClient;
  GroupRepository({
    required this.restClient,
  });

  Future<List<GroupModel>> findAll() async {
    final result = await restClient.get('/group');
    if (result.hasError) {
      throw Exception('Erro ao buscar Grupo (${result.statusText})');
    }
    return result.body
        .map<GroupModel>((group) => GroupModel.fromMap(group))
        .toList();
  }
}

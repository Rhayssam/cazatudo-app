// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:developer';

import 'package:cazatudo_app/app/models/group_model.dart';
import 'package:get/get.dart';

import 'package:cazatudo_app/app/core/rest_client/rest_client.dart';
import 'package:cazatudo_app/app/models/category_model.dart';

class GroupRepository extends GetConnect {
  final RestClient restClient;
  GroupRepository({
    required this.restClient,
  });

  Future<List<GroupModel>> findAll() async {
    final result = await restClient.get('/group');
    log(result.request!.url.toString());
    if (result.hasError) {
      throw Exception('Erro ao buscar Grupo (${result.statusText})');
    }
    return result.body
        .map<GroupModel>((group) => GroupModel.fromMap(group))
        .toList();
  }
}

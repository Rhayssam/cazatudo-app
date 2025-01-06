// Essenciais
import 'package:get/get.dart';

class RestClient extends GetConnect {
  final String _ip = "http://10.24.24.155:8081";

  RestClient() {
    baseUrl = _ip;
  }
  @override
  void onInit() {
    super.onInit();
    httpClient.baseUrl = _ip;
  }
}

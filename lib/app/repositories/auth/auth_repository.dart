import 'package:cazatudo_app/app/models/user_model.dart';

abstract interface class AuthRepository {
  Future<UserModel> login(String email, String password);
  Future<UserModel> register(String name, String email, String password);
}

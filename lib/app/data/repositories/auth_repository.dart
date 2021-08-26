import 'package:app_baneco/app/data/models/request_token_model.dart';
import 'package:app_baneco/app/data/providers/auth_provider.dart';
import 'package:get/get.dart';

class AuthRepository {
  final _apiProvider = Get.find<AuthProvider>();

  Future<RequestTokenModel> auth({
    required String email,
    required String password,
  }) =>
      _apiProvider.auth(
        email: email,
        password: password,
      );
}

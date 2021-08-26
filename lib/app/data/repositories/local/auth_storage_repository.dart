import 'package:app_baneco/app/data/models/request_token_model.dart';
import 'package:app_baneco/app/data/providers/local/auth_storage_provider.dart';
import 'package:get/get.dart';

class AuthStorageRepository {
  final _authStorageProvider = Get.find<AuthStorageProvider>();

  Future<void> setSession({
    required RequestTokenModel requestToken,
  }) =>
      _authStorageProvider.setSession(
        requestToken: requestToken,
      );

  Future<RequestTokenModel> getSession() => _authStorageProvider.getSession();
}

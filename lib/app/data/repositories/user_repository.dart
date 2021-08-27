import 'package:app_baneco/app/data/models/user_model.dart';
import 'package:app_baneco/app/data/providers/user_provider.dart';
import 'package:get/get.dart';

class UserRepository {
  final _apiProvider = Get.find<UserProvider>();

  Future<List<UserModel>> getUsers({
    required int page,
  }) =>
      _apiProvider.getUsers(
        page: page,
      );
}

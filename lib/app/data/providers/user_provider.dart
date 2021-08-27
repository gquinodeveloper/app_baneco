import 'package:app_baneco/app/core/config/config.dart';
import 'package:app_baneco/app/data/models/user_model.dart';
import 'package:dio/dio.dart';

class UserProvider {
  Future<List<UserModel>> getUsers({
    required int page,
  }) async {
    final _dio = Dio();
    final _response = await _dio.get(
      "https://reqres.in/api/users",
      //kBaseUrl_Dev + "api/user/auth",
      queryParameters: {
        "page": page,
      },
    );

    return (_response.data["data"] as List)
        .map((item) => UserModel.fromJson(item))
        .toList();
  }
}

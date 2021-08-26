import 'package:app_baneco/app/core/config/config.dart';
import 'package:app_baneco/app/data/models/request_token_model.dart';
import 'package:dio/dio.dart';

class AuthProvider {
  Future<RequestTokenModel> auth({
    required String email,
    required String password,
  }) async {
    final _dio = Dio();
    final _response = await _dio.post(
      kBaseUrl_Dev + "api/user/auth",
      data: {
        "email": email,
        "password": password,
      },
    );

    return RequestTokenModel.fromJson(_response.data);
  }
}

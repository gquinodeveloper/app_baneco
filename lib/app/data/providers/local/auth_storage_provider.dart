import 'dart:convert';

import 'package:app_baneco/app/core/config/config.dart';
import 'package:app_baneco/app/data/models/request_token_model.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

class AuthStorageProvider {
  //final storage = new FlutterSecureStorage();
  final FlutterSecureStorage _storage = Get.put(FlutterSecureStorage());

  Future<void> setSession({
    required RequestTokenModel requestToken,
  }) async {
    await _storage.write(
      key: kKeyAuth,
      value: jsonEncode(requestToken.toJson()),
    );
  }

  Future<RequestTokenModel> getSession() async {
    String value = await _storage.read(key: kKeyAuth) ?? "";
    return RequestTokenModel.fromJson(jsonDecode(value));
  }
}

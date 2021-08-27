import 'package:app_baneco/app/data/models/request_token_model.dart';
import 'package:app_baneco/app/data/repositories/auth_repository.dart';
import 'package:app_baneco/app/data/repositories/local/auth_storage_repository.dart';
import 'package:app_baneco/app/global/load_spinner.dart';
import 'package:app_baneco/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  //Instancias
  final _authRepository = Get.find<AuthRepository>();
  final _authStorageRepository = Get.find<AuthStorageRepository>();

  RequestTokenModel? _oRequestToken = RequestTokenModel();

  //Variables
  String _message = "";
  String _email = "gqcrispin@gmail.com"; //gqcrispin@gmail.com
  String _password = "123456"; //

  @override
  void onInit() {
    //loadInit();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void onChangeEmail(String value) => _email = value;
  void onChangePassword(String value) => _password = value;

  loadInit() async {
    _oRequestToken = await _authStorageRepository.getSession();
    if (_oRequestToken!.requestToken!.isNotEmpty) {
      Get.offNamedUntil(AppRoutes.HOME, (_) => false);
    }
  }

  bool _validate() {
    try {
      if (_email.length == 0) {
        _message = "Ingresar email";
        return false;
      }
    } catch (e) {
      print(e.toString());
    }
    return true;
  }

  doauth() async {
    try {
      LoadSpinner.show();
      if (_validate()) {
        _oRequestToken = await _authRepository.auth(
          email: _email,
          password: _password,
        );

        if (_oRequestToken!.requestToken!.isNotEmpty) {
          _authStorageRepository.setSession(
            requestToken: _oRequestToken ?? RequestTokenModel(),
          );

          LoadSpinner.hide();
          Get.offNamedUntil(AppRoutes.HOME, (_) => false);
        }
      } else {
        LoadSpinner.hide();
        Get.snackbar(
          "Message",
          _message,
          colorText: Colors.white,
          duration: Duration(seconds: 5),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.pink,
        );
      }
    } catch (e) {
      LoadSpinner.hide();
      print(e.toString());
    }
    //Get.toNamed(AppRoutes.HOME);
    //Get.offNamedUntil(AppRoutes.HOME, (_) => false);
  }
}

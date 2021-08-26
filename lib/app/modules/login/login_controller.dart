import 'package:app_baneco/app/data/models/request_token_model.dart';
import 'package:app_baneco/app/data/repositories/auth_repository.dart';
import 'package:app_baneco/app/data/repositories/local/auth_storage_repository.dart';
import 'package:app_baneco/app/routes/app_routes.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  //Instancias
  final _authRepository = Get.find<AuthRepository>();
  final _authStorageRepository = Get.find<AuthStorageRepository>();

  RequestTokenModel? _oRequestToken = RequestTokenModel();

  //Variables
  String _email = "gqcrispin@gmail.com";
  String _password = "123456";

  @override
  void onInit() {
    loadInit();
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  loadInit() async {
    _oRequestToken = await _authStorageRepository.getSession();
    if (_oRequestToken!.requestToken!.isNotEmpty) {
      Get.offNamedUntil(AppRoutes.HOME, (_) => false);
    }
  }

  loadHome() async {
    try {
      _oRequestToken = await _authRepository.auth(
        email: _email,
        password: _password,
      );

      if (_oRequestToken!.requestToken!.isNotEmpty) {
        _authStorageRepository.setSession(
          requestToken: _oRequestToken ?? RequestTokenModel(),
        );
        Get.offNamedUntil(AppRoutes.HOME, (_) => false);
      }

      //print(_oRequestToken!.requestToken);
    } catch (e) {
      print(e.toString());
    }
    //Get.toNamed(AppRoutes.HOME);
    //Get.offNamedUntil(AppRoutes.HOME, (_) => false);
  }
}

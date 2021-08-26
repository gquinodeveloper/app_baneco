import 'package:app_baneco/app/data/models/request_token_model.dart';
import 'package:app_baneco/app/data/repositories/local/auth_storage_repository.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //Instancias
  final _authStorageRepository = Get.find<AuthStorageRepository>();
  RequestTokenModel? _oRequestToken = RequestTokenModel();

  @override
  void onInit() {
    _loadStorage();
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

  _loadStorage() async {
    _oRequestToken = await _authStorageRepository.getSession();
    print("User: ${_oRequestToken!.idUser}");
    print("Token: ${_oRequestToken!.requestToken}");
  }
}

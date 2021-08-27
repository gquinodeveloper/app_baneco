import 'package:app_baneco/app/data/models/request_token_model.dart';
import 'package:app_baneco/app/data/models/user_model.dart';
import 'package:app_baneco/app/data/repositories/local/auth_storage_repository.dart';
import 'package:app_baneco/app/data/repositories/user_repository.dart';
import 'package:app_baneco/app/global/load_spinner.dart';
import 'package:app_baneco/app/routes/app_routes.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  //Instancias
  final _authStorageRepository = Get.find<AuthStorageRepository>();
  final _userRepository = Get.find<UserRepository>();

  RequestTokenModel? _oRequestToken = RequestTokenModel();

  //Variables reactivas
  RxList<UserModel> _users = RxList<UserModel>([]);
  RxList<UserModel> get users => _users;

  RxBool isLoading = RxBool(false);
  RxBool status = RxBool(true);

  @override
  void onInit() {
    _loadStorage();
    super.onInit();
  }

  @override
  void onReady() {
    _loadUsers();
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

  _loadUsers() async {
    try {
      isLoading.value = true;
      _users.value = await _userRepository.getUsers(page: 1);
      print("Users: " + _users.length.toString());
      isLoading.value = false;
    } catch (e) {
      LoadSpinner.hide();
      print(e.toString());
    }
  }

  changeColor(bool paramstatus) {
    try {
      //1: Activo
      //2: Inactivo
      //status.value = 2;
      status.value = paramstatus == true ? false : true;
    } catch (e) {}
  }

  goDetail(UserModel user) {
    try {
      //print(user.firstName);
      Get.toNamed(AppRoutes.DETAIL, arguments: user);
    } catch (e) {
      LoadSpinner.hide();
      print(e.toString());
    }
  }
}

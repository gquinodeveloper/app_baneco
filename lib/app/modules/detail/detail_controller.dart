import 'package:app_baneco/app/data/models/user_model.dart';
import 'package:get/get.dart';

class DetailController extends GetxController {
  UserModel user = UserModel();

  @override
  void onInit() {
    user = Get.arguments as UserModel;

    print("Detail: ${user.firstName}");
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
}

import 'package:app_baneco/app/routes/app_routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    _loadLogin();
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  _loadLogin() async {
    await Future.delayed(
      Duration(milliseconds: 800),
      //() => Get.toNamed(AppRoutes.LOGIN),
      () => Get.offNamedUntil(AppRoutes.LOGIN, (_) => false),
    );
  }
}

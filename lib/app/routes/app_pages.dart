import 'package:app_baneco/app/modules/home/home_binding.dart';
import 'package:app_baneco/app/modules/home/home_page.dart';
import 'package:app_baneco/app/modules/login/login_binding.dart';
import 'package:app_baneco/app/modules/login/login_page.dart';
import 'package:app_baneco/app/modules/splash/splash_binding.dart';
import 'package:app_baneco/app/modules/splash/splash_page.dart';
import 'package:app_baneco/app/routes/app_routes.dart';
import 'package:get/route_manager.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.SPLASH,
      page: () => SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.LOGIN,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRoutes.HOME,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
  ];
}

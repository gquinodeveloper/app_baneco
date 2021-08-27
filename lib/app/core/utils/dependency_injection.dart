import 'package:app_baneco/app/data/providers/auth_provider.dart';
import 'package:app_baneco/app/data/providers/local/auth_storage_provider.dart';
import 'package:app_baneco/app/data/providers/user_provider.dart';
import 'package:app_baneco/app/data/repositories/auth_repository.dart';
import 'package:app_baneco/app/data/repositories/local/auth_storage_repository.dart';
import 'package:app_baneco/app/data/repositories/user_repository.dart';
import 'package:get/get.dart';

class DependencyInjection {
  static void load() {
    //Providers
    Get.put<AuthProvider>(AuthProvider());
    Get..put<UserProvider>(UserProvider());

    //Local
    Get.put<AuthStorageProvider>(AuthStorageProvider());

    //Repositories
    Get.put<AuthRepository>(AuthRepository());
    Get.put<UserRepository>(UserRepository());

    //Local
    Get.put<AuthStorageRepository>(AuthStorageRepository());
  }
}

import 'package:app_baneco/app/data/providers/auth_provider.dart';
import 'package:app_baneco/app/data/providers/local/auth_storage_provider.dart';
import 'package:app_baneco/app/data/repositories/auth_repository.dart';
import 'package:app_baneco/app/data/repositories/local/auth_storage_repository.dart';
import 'package:get/get.dart';

class DependencyInjection {
  static void load() {
    //Providers
    Get.put<AuthProvider>(AuthProvider());

    //Local
    Get.put<AuthStorageProvider>(AuthStorageProvider());

    //Repositories
    Get.put<AuthRepository>(AuthRepository());

    //Local
    Get.put<AuthStorageRepository>(AuthStorageRepository());
  }
}

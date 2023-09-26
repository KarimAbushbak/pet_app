import 'package:get/get.dart';
import '../../../../core/constants.dart';

import '../../../../route/routes.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    // appSettingsSharedPreferences.clear();
    Future.delayed(
        const Duration(
          seconds: Constants.splashTime,
        ), () {
      String route = Routes.authenticationView;
      Get.offAllNamed(route);


    });
  }
}

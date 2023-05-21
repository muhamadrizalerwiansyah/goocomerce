import 'package:get/get.dart';
import 'package:goocommerce/app/routes/app_pages.dart';

import '../../../services/authentication_service.dart';

class SplashScreenController extends GetxController {
  final count = 0.obs;
  final authenticationService = Get.find<AuthenticationService>();

  void launchApp() {
    Future.delayed(Duration(seconds: 7), () {
      // bool isLoggedIn = false;
      if (authenticationService.user.value == null) {
        Get.offNamed(Routes.ON_BOARDING);
      } else {
        Get.offNamed(Routes.HOME);
      }

      // if (isLoggedIn) {
      //   Get.offNamed('/home'); // Replace '/home' with your home route
      // } else {
      //   Get.offNamed('/login'); // Replace '/login' with your login route
      // }
    });
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    // Simulate some initialization delay
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}

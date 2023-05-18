import 'package:get/get.dart';
import 'package:goocommerce/app/routes/app_pages.dart';

class SplashScreenController extends GetxController {
  //TODO: Implement SplashScreenController

  final count = 0.obs;
  void launchApp() {
    Future.delayed(Duration(seconds: 7), () {
      // bool isLoggedIn = false;
      Get.offNamed(Routes.ON_BOARDING);
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

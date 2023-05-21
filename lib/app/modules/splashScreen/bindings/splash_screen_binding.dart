import 'package:get/get.dart';

import '../../../services/authentication_service.dart';
import '../controllers/splash_screen_controller.dart';

class SplashScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashScreenController>(
      () => SplashScreenController(),
    );
    Get.lazyPut<AuthenticationService>(
      () => AuthenticationService(),
    );
  }
}

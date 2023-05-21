import 'package:get/get.dart';

import '../../../services/authentication_service.dart';
import '../controllers/login_controller.dart';
import '../providers/login_provider.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(),
    );
    Get.lazyPut<LoginProvider>(
      () => LoginProvider(),
    );
    Get.lazyPut<AuthenticationService>(
      () => AuthenticationService(),
    );
  }
}

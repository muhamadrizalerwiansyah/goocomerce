import 'package:get/get.dart';

import '../../../../services/authentication_service.dart';
import '../controllers/account_controller.dart';
import '../providers/account_provider.dart';

class AccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccountController>(
      () => AccountController(),
    );
    Get.lazyPut<AuthenticationService>(
      () => AuthenticationService(),
    );
    Get.lazyPut<AccountProvider>(
      () => AccountProvider(),
    );
  }
}

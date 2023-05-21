import 'package:get/get.dart';

import '../../../../routes/app_pages.dart';
import '../../../../services/authentication_service.dart';
import '../providers/account_provider.dart';

class AccountController extends GetxController {
  final count = 0.obs;
  final name = "".obs;
  final email = "".obs;
  final authService = Get.find<AuthenticationService>();
  final accountProvider = Get.find<AccountProvider>();

  Future<void> logout() async {
    authService.logOut();
    await Get.offNamed(Routes.LOGIN);
  }

  void getData() async {
    await authService.getUser().then((value) {
      name.value = value!.name;
      email.value = value.email;
    });
    update();
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}

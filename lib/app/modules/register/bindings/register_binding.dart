import 'package:get/get.dart';

import '../controllers/register_controller.dart';
import '../providers/register_provider.dart';

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(
      () => RegisterController(),
    );
    Get.lazyPut<RegisterProvider>(
      () => RegisterProvider(),
    );
  }
}

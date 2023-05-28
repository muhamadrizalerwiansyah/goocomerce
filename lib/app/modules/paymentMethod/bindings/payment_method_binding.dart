import 'package:get/get.dart';

import '../controllers/payment_method_controller.dart';
import '../providers/payment_method_provider.dart';

class PaymentMethodBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PaymentMethodController>(
      () => PaymentMethodController(),
    );
    Get.lazyPut<PaymentMethodProvider>(
      () => PaymentMethodProvider(),
    );
  }
}

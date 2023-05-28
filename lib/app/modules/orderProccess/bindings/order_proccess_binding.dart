import 'package:get/get.dart';

import '../../../services/authentication_service.dart';
import '../controllers/order_proccess_controller.dart';
import '../providers/order_proccess_provider.dart';

class OrderProccessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrderProccessController>(
      () => OrderProccessController(),
    );

    Get.lazyPut<OrderProccessProvider>(
      () => OrderProccessProvider(),
    );
  }
}

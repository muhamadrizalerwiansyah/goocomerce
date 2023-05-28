import 'package:get/get.dart';

import '../controllers/transaction_controller.dart';
import '../providers/transaction_provider.dart';

class TransactionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TransactionController>(
      () => TransactionController(),
    );
    Get.lazyPut<TransactionProvider>(
      () => TransactionProvider(),
    );
  }
}

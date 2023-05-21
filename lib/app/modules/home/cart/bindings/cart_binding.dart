import 'package:get/get.dart';

import '../controllers/cart_controller.dart';
import '../providers/cart_provider.dart';

class CartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CartController>(
      () => CartController(),
    );
    Get.lazyPut<CartProvider>(
      () => CartProvider(),
    );
  }
}

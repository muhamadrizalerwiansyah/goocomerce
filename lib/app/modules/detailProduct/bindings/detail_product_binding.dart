import 'package:get/get.dart';

import '../../home/cart/controllers/cart_controller.dart';
import '../../home/cart/providers/cart_provider.dart';
import '../controllers/detail_product_controller.dart';
import '../providers/detail_product_provider.dart';

class DetailProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailProductController>(
      () => DetailProductController(),
    );
    Get.lazyPut<DetailProductProvider>(
      () => DetailProductProvider(),
    );
    Get.lazyPut<CartController>(
      () => CartController(),
    );
    Get.lazyPut<CartProvider>(() => CartProvider());
  }
}

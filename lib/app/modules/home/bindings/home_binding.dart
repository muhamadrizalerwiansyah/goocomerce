import 'package:get/get.dart';
import 'package:goocommerce/app/modules/home/homePage/controllers/home_page_controller.dart';

import '../account/controllers/account_controller.dart';
import '../account/providers/account_provider.dart';
import '../cart/controllers/cart_controller.dart';
import '../cart/providers/cart_provider.dart';
import '../controllers/home_controller.dart';
import '../homePage/providers/home_page_provider.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccountProvider>(() => AccountProvider());
    Get.lazyPut<HomePageProvider>(() => HomePageProvider());
    Get.lazyPut<CartProvider>(() => CartProvider());

    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<HomePageController>(
      () => HomePageController(),
    );
    Get.lazyPut<AccountController>(
      () => AccountController(),
    );
    Get.lazyPut<CartController>(
      () => CartController(),
    );
  }
}

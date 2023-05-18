import 'package:get/get.dart';
import 'package:goocommerce/app/modules/home/homePage/controllers/home_page_controller.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<HomePageController>(
      () => HomePageController(),
    );
  }
}

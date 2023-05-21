import 'package:get/get.dart';

import '../controllers/home_page_controller.dart';
import '../providers/home_page_provider.dart';

class HomePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomePageController>(
      () => HomePageController(),
    );
    Get.lazyPut<HomePageProvider>(
      () => HomePageProvider(),
    );
  }
}

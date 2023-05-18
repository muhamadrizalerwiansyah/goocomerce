import 'package:get/get.dart';

class HomePageController extends GetxController {
  //TODO: Implement HomePageController
  final count = 0.obs;
  final menuActive = "All".obs;
  final List<String> imgList = [
    'https://i.ibb.co/mDmMvXd/renewblebanner.png',
    'https://i.ibb.co/SwKT889/perishablebanner.png',
    'https://i.ibb.co/vXcyRYf/fmcgbanner.png',
    'https://i.ibb.co/KDjkBsR/spicesbanner.png'
  ].obs;

  void changeMenu(String title) {
    menuActive.value = title;
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

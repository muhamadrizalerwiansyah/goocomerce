import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../views/widgets/SliderPageWidget.dart';

class OnBoardingController extends GetxController {
  PageController controllerPage = PageController();

  List<Widget> pages = [
    const SliderPage(
        title: "Welcome to GooCommerce",
        description:
            "Welcome to GooCommerce. We are a synergy ecosystem for the development of local superior products for the global market.",
        image: "assets/images/shop.png"),
    const SliderPage(
        title: "Get Your Favorite Product",
        description:
            "With GooCommerce you can get the products you like at your place",
        image: "assets/images/slide2.png"),
    const SliderPage(
        title: "World Halal Exporter",
        description:
            "Together with us to make Indonesia the world's largest exporter of halal products.",
        image: "assets/images/delivery.png"),
  ];

  final count = 0.obs;
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

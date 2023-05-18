import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../views/widgets/SliderPageWidget.dart';

class OnBoardingController extends GetxController {
  //TODO: Implement OnBoardingController
  PageController controllerPage = PageController();

  List<Widget> pages = [
    const SliderPage(
        title: "Selamat Datang di UHH",
        description:
            "Selamat datang di UMKM Halal Hub (UHH). Kami adalah ekosistem sinergisme untuk pengembangan produk unggulan lokal menuju pasar global.",
        image: "assets/images/shop.png"),
    const SliderPage(
        title: "Industri Halal Indonesia",
        description:
            "Dengan UHH kamu dapat mengakses jaringan luas industri halal Indonesia dan internasional & informasi terbaru tentang tren industri halal.",
        image: "assets/images/shipping.png"),
    const SliderPage(
        title: "Exportir Halal Dunia",
        description:
            "Bergabunglah bersama kami untuk mewujudkan Indonesia sebagai exportir produk halal terbesar dunia.",
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

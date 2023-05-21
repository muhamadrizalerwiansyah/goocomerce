import 'package:get/get.dart';

import '../../../../data/model/category_product.dart';
import '../../../../data/model/product.dart';
import '../../../../services/authentication_service.dart';
import '../providers/home_page_provider.dart';

class HomePageController extends GetxController {
  //TODO: Implement HomePageController
  final count = 0.obs;
  final unread = 0.obs;
  final menuActive = "All".obs;
  final List<String> imgList = [
    'https://i.ibb.co/mDmMvXd/renewblebanner.png',
    'https://i.ibb.co/SwKT889/perishablebanner.png',
    'https://i.ibb.co/vXcyRYf/fmcgbanner.png',
    'https://i.ibb.co/KDjkBsR/spicesbanner.png'
  ].obs;
  var categoryList = List<CategoryProduct>.empty().obs;
  var productLis = List<Product>.empty().obs;

  final homePageProvider = Get.find<HomePageProvider>();
  final authService = Get.find<AuthenticationService>();

  void changeMenu(String title) {
    menuActive.value = title;
    update();
  }

  @override
  void onInit() {
    super.onInit();

    homePageProvider.getCategory().then((value) {
      categoryList
          .add(const CategoryProduct(id: "All", code: "All", name: "All"));
      for (var i = 0; i < value.length; i++) {
        categoryList.add(CategoryProduct(
            id: value[i].id, code: value[i].code, name: value[i].name));
      }
    });
    homePageProvider.getProduct().then((value) {
      for (var i = 0; i < value.length; i++) {
        productLis.add(Product(
            id: value[i].id,
            name: value[i].name,
            photos: value[i].photos,
            description: value[i].description,
            price: value[i].price,
            nameCategory: value[i].nameCategory));
      }
    });
    update();
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

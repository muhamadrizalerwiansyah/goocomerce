import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../providers/detail_product_provider.dart';

class DetailProductController extends GetxController {
  //TODO: Implement DetailProductController

  final count = 0.obs;
  final image = "".obs;
  final categoryName = "".obs;
  final name = "".obs;
  final description = "".obs;
  final stock = 0.obs;
  final price = "".obs;
  RxBool isLoadingDetailShimmer = false.obs;
  var formatter = NumberFormat('#,###,000');
  final detailProductProvider = Get.find<DetailProductProvider>();

  void getDetail(String id) {
    try {
      detailProductProvider.getProduct(id).then((value) {
        image.value = value.photos!;
        categoryName.value = value.category!.name;
        name.value = value.name;
        description.value = value.description!;
        stock.value = value.stock!;
        price.value = "IDR ${formatter.format(value.price)}";
        isLoadingDetailShimmer.value = true;
      });
    } catch (e) {}
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

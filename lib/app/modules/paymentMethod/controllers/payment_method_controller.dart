import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import '../providers/payment_method_provider.dart';

class PaymentMethodController extends GetxController {
  //TODO: Implement PaymentMethodController

  RxBool isViewBank = false.obs;
  RxBool isViewWallet = true.obs;
  RxBool isViewCod = true.obs;
  var selectedPaymentMethod = 0.obs;
  RxBool isLoadingDetailShimmer = false.obs;
  var idInvoice = "".obs;
  var total = 0.obs;
  var initialPrice = 0.obs;
  var totalProduct = 0.obs;
  var fee = 0.obs;

  final paymentProvider = Get.find<PaymentMethodProvider>();

  final count = 0.obs;

  void getData(String id) async {
    try {
      paymentProvider.getDetail(id).then((value) {
        totalProduct.value = value.order.orderItems.length;
        initialPrice.value = value.order.total;

        update();
      });
    } catch (e) {
      await EasyLoading.showInfo('Error!');
    }
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

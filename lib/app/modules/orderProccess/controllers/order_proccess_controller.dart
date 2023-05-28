import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:goocommerce/app/data/model/order_item.dart';
import 'package:goocommerce/app/modules/orderProccess/providers/order_proccess_provider.dart';
import 'package:intl/intl.dart';

import '../../../services/authentication_service.dart';

class OrderProccessController extends GetxController {
  final branchTitle = "".obs;
  final branchAddress = "".obs;
  final branchUrl = "".obs;
  final totalProduct = 0.obs;
  final totalPrice = "IDR 0".obs;
  RxBool isLoadingDetailShimmer = false.obs;

  final orderProccessProvider = Get.find<OrderProccessProvider>();
  var orderList = List<OrderItem>.empty().obs;
  var formatter = NumberFormat('#,###,000');
  void getData(String id) async {
    try {
      orderProccessProvider.me().then((value) {
        branchTitle.value = value.branch!.name;
        branchAddress.value = value.branch!.address!;
        branchUrl.value = value.branch!.mapUrl!;
      });

      orderProccessProvider.getDetail(id).then((value) {
        totalProduct.value = value.order.orderItems.length;
        totalPrice.value = "IDR ${formatter.format(value.order.total)}";
        for (var i = 0; i < value.order.orderItems.length; i++) {
          orderList.add(OrderItem(
              id: value.order.orderItems[i].id,
              orderId: value.order.orderItems[i].orderId,
              productId: value.order.orderItems[i].productId,
              price: value.order.orderItems[i].price,
              qty: value.order.orderItems[i].qty,
              subtotal: value.order.orderItems[i].subtotal,
              product: value.order.orderItems[i].product));
        }
        isLoadingDetailShimmer.value = true;
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
}

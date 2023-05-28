import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goocommerce/app/data/model/invoice.dart';

import '../providers/transaction_provider.dart';

class TransactionController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    const Tab(
      child: Text('All'),
    ),
    const Tab(
      child: Text('Pending'),
    ),
    const Tab(
      child: Text('Process'),
    ),
    const Tab(
      child: Text('Waiting To Taken'),
    ),
    const Tab(
      child: Text('Complete'),
    ),
    const Tab(
      child: Text('Cancel'),
    )
  ];
  late TabController tabController;
  var orderList = List<Invoice>.empty().obs;

  final transactionProvider = Get.find<TransactionProvider>();

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    tabController = TabController(vsync: this, length: myTabs.length);
    transactionProvider.getData().then((value) {
      for (var i = 0; i < value.length; i++) {
        orderList.add(Invoice(
            id: value[i].id,
            userId: value[i].userId,
            amount: value[i].amount,
            createdAt: value[i].createdAt,
            order: value[i].order));
      }
      update();
    });
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

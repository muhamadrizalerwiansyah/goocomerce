import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:goocommerce/app/data/model/invoice.dart';
import 'package:goocommerce/app/modules/home/transaction/views/widgets/ItemHistoryOrderWidget.dart';
import 'package:intl/intl.dart';

import '../../../../../configs/colorSchemes.dart';
import '../../../../../configs/constant.dart';
import '../controllers/transaction_controller.dart';

class TransactionView extends GetView<TransactionController> {
  const TransactionView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    var formatter = NumberFormat('#,###,000');
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin20),
          child: Text(
            'Order',
            style:
                TextStyle(color: lightColorScheme.inverseSurface, fontSize: 17),
          ),
        ),
        backgroundColor: lightColorScheme.background,
        elevation: 0.2,
      ),
      body: Container(
        color: lightColorScheme.background,
        child: Center(
          child: Column(
            children: [
              SizedBox(
                  width: size.width,
                  height: 50.h,
                  // color: colorPrimaryMain,
                  child: TabBar(
                      controller: controller.tabController,
                      isScrollable: true,
                      labelColor: colorPrimaryMain,
                      unselectedLabelColor: colorGrey100,
                      indicatorColor: colorPrimaryMain,
                      dividerColor: colorGrey400,
                      tabs: controller.myTabs)),
              Expanded(
                child: Container(
                  width: size.width,
                  // height: size.height - 193.h,
                  color: colorGrey100,
                  child: TabBarView(
                    controller: controller.tabController,
                    children: <Widget>[
                      Container(
                        width: size.width,
                        height: size.height,
                        color: lightColorScheme.background,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10.h,
                              ),
                              Obx(
                                () => controller.orderList.isNotEmpty
                                    ? ListView.builder(
                                        itemCount: controller.orderList.length,
                                        scrollDirection: Axis.vertical,
                                        padding: const EdgeInsets.only(top: 0),
                                        shrinkWrap: true,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        itemBuilder:
                                            (BuildContext ctxt, int index) {
                                          Invoice item =
                                              controller.orderList[index];

                                          return ItemHistoryOrderWidget(
                                            id: item.id,
                                            size: size,
                                            image: item.order.orderItems[0]
                                                .product.photos!,
                                            name: item.order.orderItems[0]
                                                .product.name,
                                            weight: "-",
                                            status: item.order.orderStatus,
                                            discount: "0",
                                            price:
                                                "IDR ${formatter.format(item.order.orderItems[0].product.price)}",
                                            initialPrice:
                                                "IDR ${formatter.format(item.order.orderItems[0].product.price)}",
                                            codeOrder: "-",
                                            countProduct: item
                                                .order.orderItems.length
                                                .toString(),
                                            totalPrice:
                                                "IDR ${formatter.format(item.amount)}",
                                            qty: item.order.orderItems.length,
                                            dateTime: item.order.createdAt!,
                                            urlPayment: item.paymentUrl != null
                                                ? item.paymentUrl!
                                                : "-",
                                            paidAt: "-",
                                          );
                                        })
                                    : ItemTransactionWidget(size: size),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: size.width,
                        height: size.height,
                        color: lightColorScheme.background,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10.h,
                              ),
                              Obx(
                                () => controller.orderList
                                        .where((element) =>
                                            element.order.orderStatus ==
                                            "PENDING")
                                        .toList()
                                        .isNotEmpty
                                    ? ListView.builder(
                                        itemCount: controller.orderList.length,
                                        scrollDirection: Axis.vertical,
                                        padding: const EdgeInsets.only(top: 0),
                                        shrinkWrap: true,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        itemBuilder:
                                            (BuildContext ctxt, int index) {
                                          Invoice item =
                                              controller.orderList[index];

                                          return item.order.orderStatus ==
                                                  "PENDING"
                                              ? ItemHistoryOrderWidget(
                                                  id: item.id,
                                                  size: size,
                                                  image: item
                                                      .order
                                                      .orderItems[0]
                                                      .product
                                                      .photos!,
                                                  name: item.order.orderItems[0]
                                                      .product.name,
                                                  weight: "-",
                                                  status:
                                                      item.order.orderStatus,
                                                  discount: "0",
                                                  price:
                                                      "IDR ${formatter.format(item.order.orderItems[0].product.price)}",
                                                  initialPrice:
                                                      "IDR ${formatter.format(item.order.orderItems[0].product.price)}",
                                                  codeOrder: "-",
                                                  countProduct: item
                                                      .order.orderItems.length
                                                      .toString(),
                                                  totalPrice:
                                                      "IDR ${formatter.format(item.amount)}",
                                                  qty: item
                                                      .order.orderItems.length,
                                                  dateTime:
                                                      item.order.createdAt!,
                                                  urlPayment:
                                                      item.paymentUrl != null
                                                          ? item.paymentUrl!
                                                          : "-",
                                                  paidAt: "-",
                                                )
                                              : Container();
                                        })
                                    : ItemTransactionWidget(size: size),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: size.width,
                        height: size.height,
                        color: lightColorScheme.background,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10.h,
                              ),
                              Obx(
                                () => controller.orderList
                                        .where((element) =>
                                            element.order.orderStatus ==
                                            "PROCESS")
                                        .toList()
                                        .isNotEmpty
                                    ? ListView.builder(
                                        itemCount: controller.orderList.length,
                                        scrollDirection: Axis.vertical,
                                        padding: const EdgeInsets.only(top: 0),
                                        shrinkWrap: true,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        itemBuilder:
                                            (BuildContext ctxt, int index) {
                                          Invoice item =
                                              controller.orderList[index];

                                          return item.order.orderStatus ==
                                                  "PROCESS"
                                              ? ItemHistoryOrderWidget(
                                                  id: item.id,
                                                  size: size,
                                                  image: item
                                                      .order
                                                      .orderItems[0]
                                                      .product
                                                      .photos!,
                                                  name: item.order.orderItems[0]
                                                      .product.name,
                                                  weight: "-",
                                                  status:
                                                      item.order.orderStatus,
                                                  discount: "0",
                                                  price:
                                                      "IDR ${formatter.format(item.order.orderItems[0].product.price)}",
                                                  initialPrice:
                                                      "IDR ${formatter.format(item.order.orderItems[0].product.price)}",
                                                  codeOrder: "-",
                                                  countProduct: item
                                                      .order.orderItems.length
                                                      .toString(),
                                                  totalPrice:
                                                      "IDR ${formatter.format(item.amount)}",
                                                  qty: item
                                                      .order.orderItems.length,
                                                  dateTime:
                                                      item.order.createdAt!,
                                                  urlPayment:
                                                      item.paymentUrl != null
                                                          ? item.paymentUrl!
                                                          : "-",
                                                  paidAt: "-",
                                                )
                                              : Container();
                                        })
                                    : ItemTransactionWidget(size: size),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: size.width,
                        height: size.height,
                        color: lightColorScheme.background,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10.h,
                              ),
                              Obx(
                                () => controller.orderList
                                        .where((element) =>
                                            element.order.orderStatus ==
                                            "WAITING TO TAKEN")
                                        .toList()
                                        .isNotEmpty
                                    ? ListView.builder(
                                        itemCount: controller.orderList.length,
                                        scrollDirection: Axis.vertical,
                                        padding: const EdgeInsets.only(top: 0),
                                        shrinkWrap: true,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        itemBuilder:
                                            (BuildContext ctxt, int index) {
                                          Invoice item =
                                              controller.orderList[index];

                                          return item.order.orderStatus ==
                                                  "WAITING TO TAKEN"
                                              ? ItemHistoryOrderWidget(
                                                  id: item.id,
                                                  size: size,
                                                  image: item
                                                      .order
                                                      .orderItems[0]
                                                      .product
                                                      .photos!,
                                                  name: item.order.orderItems[0]
                                                      .product.name,
                                                  weight: "-",
                                                  status:
                                                      item.order.orderStatus,
                                                  discount: "0",
                                                  price:
                                                      "IDR ${formatter.format(item.order.orderItems[0].product.price)}",
                                                  initialPrice:
                                                      "IDR ${formatter.format(item.order.orderItems[0].product.price)}",
                                                  codeOrder: "-",
                                                  countProduct: item
                                                      .order.orderItems.length
                                                      .toString(),
                                                  totalPrice:
                                                      "IDR ${formatter.format(item.amount)}",
                                                  qty: item
                                                      .order.orderItems.length,
                                                  dateTime:
                                                      item.order.createdAt!,
                                                  urlPayment:
                                                      item.paymentUrl != null
                                                          ? item.paymentUrl!
                                                          : "-",
                                                  paidAt: "-",
                                                )
                                              : Container();
                                        })
                                    : ItemTransactionWidget(size: size),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: size.width,
                        height: size.height,
                        color: lightColorScheme.background,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10.h,
                              ),
                              Obx(
                                () => controller.orderList
                                        .where((element) =>
                                            element.order.orderStatus ==
                                            "COMPLETE")
                                        .toList()
                                        .isNotEmpty
                                    ? ListView.builder(
                                        itemCount: controller.orderList.length,
                                        scrollDirection: Axis.vertical,
                                        padding: const EdgeInsets.only(top: 0),
                                        shrinkWrap: true,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        itemBuilder:
                                            (BuildContext ctxt, int index) {
                                          Invoice item =
                                              controller.orderList[index];

                                          return item.order.orderStatus ==
                                                  "COMPLETE"
                                              ? ItemHistoryOrderWidget(
                                                  id: item.id,
                                                  size: size,
                                                  image: item
                                                      .order
                                                      .orderItems[0]
                                                      .product
                                                      .photos!,
                                                  name: item.order.orderItems[0]
                                                      .product.name,
                                                  weight: "-",
                                                  status:
                                                      item.order.orderStatus,
                                                  discount: "0",
                                                  price:
                                                      "IDR ${formatter.format(item.order.orderItems[0].product.price)}",
                                                  initialPrice:
                                                      "IDR ${formatter.format(item.order.orderItems[0].product.price)}",
                                                  codeOrder: "-",
                                                  countProduct: item
                                                      .order.orderItems.length
                                                      .toString(),
                                                  totalPrice:
                                                      "IDR ${formatter.format(item.amount)}",
                                                  qty: item
                                                      .order.orderItems.length,
                                                  dateTime:
                                                      item.order.createdAt!,
                                                  urlPayment:
                                                      item.paymentUrl != null
                                                          ? item.paymentUrl!
                                                          : "-",
                                                  paidAt: "-",
                                                )
                                              : Container();
                                        })
                                    : ItemTransactionWidget(size: size),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: size.width,
                        height: size.height,
                        color: lightColorScheme.background,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10.h,
                              ),
                              Obx(
                                () => controller.orderList
                                        .where((element) =>
                                            element.order.orderStatus ==
                                            "CANCEL")
                                        .toList()
                                        .isNotEmpty
                                    ? ListView.builder(
                                        itemCount: controller.orderList.length,
                                        scrollDirection: Axis.vertical,
                                        padding: const EdgeInsets.only(top: 0),
                                        shrinkWrap: true,
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        itemBuilder:
                                            (BuildContext ctxt, int index) {
                                          Invoice item =
                                              controller.orderList[index];

                                          return item.order.orderStatus ==
                                                  "CANCEL"
                                              ? ItemHistoryOrderWidget(
                                                  id: item.id,
                                                  size: size,
                                                  image: item
                                                      .order
                                                      .orderItems[0]
                                                      .product
                                                      .photos!,
                                                  name: item.order.orderItems[0]
                                                      .product.name,
                                                  weight: "-",
                                                  status:
                                                      item.order.orderStatus,
                                                  discount: "0",
                                                  price:
                                                      "IDR ${formatter.format(item.order.orderItems[0].product.price)}",
                                                  initialPrice:
                                                      "IDR ${formatter.format(item.order.orderItems[0].product.price)}",
                                                  codeOrder: "-",
                                                  countProduct: item
                                                      .order.orderItems.length
                                                      .toString(),
                                                  totalPrice:
                                                      "IDR ${formatter.format(item.amount)}",
                                                  qty: item
                                                      .order.orderItems.length,
                                                  dateTime:
                                                      item.order.createdAt!,
                                                  urlPayment:
                                                      item.paymentUrl != null
                                                          ? item.paymentUrl!
                                                          : "-",
                                                  paidAt: "-",
                                                )
                                              : Container();
                                        })
                                    : ItemTransactionWidget(size: size),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ItemTransactionWidget extends StatelessWidget {
  const ItemTransactionWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: 500.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: size.width,
            height: 300.h,
            child: SvgPicture.asset(
              "assets/svg/transaksi.svg",
              width: 20.w,
              height: 20.h,
            ),
          ),
          SizedBox(
            width: size.width,
            child: Center(
              child: Text(
                "You Have Never Made a Transaction",
                style: TextStyle(
                    color: lightColorScheme.inverseSurface,
                    fontSize: 13,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          SizedBox(
            width: size.width,
            child: Center(
              child: Text(
                "Come on, make transactions immediately with lots of promos.",
                style: TextStyle(
                    color: colorGrey100,
                    fontSize: 11,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:goocommerce/app/modules/orderProccess/views/widgets/ItemCartProccessWidget.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../../../configs/colorSchemes.dart';
import '../../../../configs/constant.dart';
import '../controllers/order_proccess_controller.dart';

class OrderProccessView extends GetView<OrderProccessController> {
  OrderProccessView({Key? key}) : super(key: key);
  final id = Get.arguments as String;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: lightColorScheme.background,
        surfaceTintColor: lightColorScheme.background,
        elevation: 0.5,
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(1),
            child: Container(
              color: colorGrey100,
              height: 0.1,
            )),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: lightColorScheme.onSurfaceVariant,
          ),
          onPressed: () => Get.back(),
        ),
        title: Text(
          'Order',
          style:
              TextStyle(color: lightColorScheme.inverseSurface, fontSize: 17),
        ),
      ),
      body: SlidingUpPanel(
          maxHeight: size.height / 12,
          minHeight: size.height / 12,
          backdropColor: lightColorScheme.background,
          boxShadow: const [
            BoxShadow(
                color: Color.fromARGB(255, 236, 236, 236),
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(0, 1) // Shadow position
                ),
          ],
          body: Container(
            width: size.width,
            height: size.height,
            color: lightColorScheme.background,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  ItemCartProccessWidget(
                      id: "id",
                      size: size,
                      image: "http://192.168.1.4:8000/upload/1684391287.jpg",
                      name: "name",
                      weight: "weight",
                      discount: "discount",
                      initialPrice: "initialPrice",
                      price: "price",
                      qty: 1),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPaddin20,
                        vertical: kDefaultPaddin10),
                    child: SizedBox(
                      width: size.width,
                      child: Text(
                        "Order Taking",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: lightColorScheme.inverseSurface),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPaddin20),
                    child: Container(
                      width: size.width,
                      // height: 150.h,
                      decoration: BoxDecoration(
                          color: lightColorScheme.background,
                          border: Border.all(width: 0.1, color: colorGrey600),
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromARGB(255, 243, 243, 243),
                                spreadRadius: 1,
                                blurRadius: 10,
                                offset: Offset(0, 1) // Shadow position
                                ),
                          ],
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(kDefaultPaddin10),
                        child: Column(
                          children: [
                            SizedBox(
                              width: size.width,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.storefront_outlined,
                                    size: 24,
                                    color: lightColorScheme.inverseSurface,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    " controller.branchName.value",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: lightColorScheme.inverseSurface),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            SizedBox(
                              width: size.width,
                              child: Text(
                                "controller.branchAddress.value",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: colorGrey100,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            SizedBox(
                              width: size.width,
                              child: InkWell(
                                onTap: () async {
                                  // var dataurl =
                                  //     controller.branchUrl;
                                  // var url = dataurl.substring(6);
                                  // final Uri toLaunch =
                                  //     Uri.https("", url);
                                  // if (!await launchUrl(
                                  //   toLaunch,
                                  //   mode: LaunchMode
                                  //       .externalApplication,
                                  // )) {
                                  //   throw 'Could not launch $toLaunch';
                                  // }
                                },
                                child: Text(
                                  "controller.branchUrl.value",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: colorBlue100,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Container(
                    width: size.width,
                    height: 8.h,
                    color: colorGrey600,
                  ),
                  Container(
                    width: size.width,
                    height: 50.h,
                    decoration: BoxDecoration(
                        color: lightColorScheme.background,
                        border: Border(
                            bottom: BorderSide(
                                width: 0.5, color: lightColorScheme.outline))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPaddin20),
                      child: Row(
                        children: [
                          Text(
                            "Shopping Summary",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: lightColorScheme.inverseSurface),
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPaddin20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total product (1)",
                          style: TextStyle(
                              color: lightColorScheme.outline,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "IDR 20000",
                          style: TextStyle(
                              color: lightColorScheme.inverseSurface,
                              fontSize: 13,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          panel: SizedBox(
            width: size.width,
            height: size.height,
            child: Padding(
              padding: const EdgeInsets.all(kDefaultPaddin10),
              child: Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: InkWell(
                        onTap: () {},
                        child: SizedBox(
                          width: size.width,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Total order",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: colorGrey100),
                              ),
                              SizedBox(
                                width: size.width,
                                child: Row(
                                  children: [
                                    Text(
                                      "IDR 0",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w700,
                                          color:
                                              lightColorScheme.inverseSurface),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )),
                  Expanded(
                    flex: 2,
                    child: InkWell(
                      onTap: () {
                        // Get.toNamed(Routes.ORDER_PROCCESS);
                        // if (controller.totalProduct.value > 0) {
                        //   // controller.checkout();
                        // } else {
                        //   EasyLoading.showInfo('Produk belum dipilih!');
                        // }
                      },
                      child: Container(
                        height: 40.h,
                        decoration: BoxDecoration(
                            color: colorPrimaryMain,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: Text(
                          "Choose payment",
                          style: TextStyle(
                              color: lightColorScheme.background,
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        )),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}

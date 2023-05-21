import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:goocommerce/app/modules/home/cart/views/widgets/ItemCartWidget.dart';
import 'package:intl/intl.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../../../../configs/colorSchemes.dart';
import '../../../../../configs/constant.dart';
import '../../../../data/model/cart.dart';
import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  const CartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var formatter = NumberFormat('#,###,000');
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: lightColorScheme.onSurfaceVariant,
            ),
            onPressed: () => Get.back(),
          ),
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin20),
            child: Text(
              'Shopping Cart',
              style: TextStyle(
                  color: lightColorScheme.inverseSurface, fontSize: 17),
            ),
          ),
          backgroundColor: lightColorScheme.background,
          elevation: 0.2,
          // bottom: PreferredSize(
          //     preferredSize: const Size.fromHeight(1),
          //     child: Container(
          //       color: colorGrey400,
          //       height: 0.5,
          //     )),
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
              child: Column(
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Container(
                        width: size.width,
                        color: lightColorScheme.background,
                        child: Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: SizedBox(
                                  child: Obx(
                                    () => Checkbox(
                                      value: controller.statusCheckAll.value,
                                      checkColor: Colors.white,
                                      activeColor: colorPrimaryMain,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(5.0),
                                        ),
                                      ),
                                      onChanged: (isChecked) {
                                        isChecked ?? true;
                                        controller.checkedAllProduct(
                                            controller.statusCheckAll.value);
                                      },
                                    ),
                                  ),
                                )),
                            Expanded(
                                flex: 5,
                                child: SizedBox(
                                  child: Row(
                                    children: [
                                      Text(
                                        "Select All Products",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: lightColorScheme
                                                .inverseSurface),
                                      ),
                                    ],
                                  ),
                                ))
                          ],
                        )),
                  ),
                  Container(
                    width: size.width,
                    height: 0.2.h,
                    color: colorGrey400,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Obx(
                    () => ListView.builder(
                        itemCount: controller.cartList.length,
                        scrollDirection: Axis.vertical,
                        padding: const EdgeInsets.only(top: 0),
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext ctxt, int indexs) {
                          Cart itemCart = controller.cartList[indexs];
                          var formatter = NumberFormat('#,###,000');
                          return ItemCartWidget(
                              id: itemCart.id,
                              size: size,
                              image: itemCart.product.photos!,
                              name: itemCart.product.name,
                              weight: "weight",
                              status: itemCart.status!,
                              isActive: true,
                              discount: "discount",
                              price:
                                  "IDR ${formatter.format(itemCart.product.price)}",
                              initialPrice:
                                  "IDR ${formatter.format(itemCart.product.price)}",
                              qty: itemCart.qty,
                              controler: controller);
                        }),
                  )
                ],
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
                          onTap: () {
                            Get.bottomSheet(
                              Container(
                                  height: 200.h,
                                  decoration: BoxDecoration(
                                      color: lightColorScheme.background,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Container(
                                        width: 100.w,
                                        height: 3.h,
                                        decoration: BoxDecoration(
                                            color:
                                                lightColorScheme.inverseSurface,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Container(
                                        width: size.width,
                                        height: 40.h,
                                        decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    width: 0.2,
                                                    color: colorGrey100))),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: kDefaultPaddin20),
                                          child: Text(
                                            "Shopping summary",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w700,
                                                color: lightColorScheme
                                                    .inverseSurface),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: size.width,
                                        height: 80.h,
                                        decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    width: 0.2,
                                                    color: colorGrey100))),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: kDefaultPaddin20),
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                width: size.width,
                                                height: 40.h,
                                                child: Obx(
                                                  () => Row(
                                                    children: [
                                                      Expanded(
                                                          flex: 1,
                                                          child: SizedBox(
                                                            child: Text(
                                                              "Total product (${controller.totalProduct.value})",
                                                              style: TextStyle(
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  color:
                                                                      colorGrey100),
                                                            ),
                                                          )),
                                                      Expanded(
                                                          flex: 1,
                                                          child: SizedBox(
                                                            child: Text(
                                                              controller.totalProductPrice
                                                                          .value !=
                                                                      0
                                                                  ? "IDR ${formatter.format(controller.totalProductPrice.value)}"
                                                                  : "IDR 0",
                                                              style: TextStyle(
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  color: lightColorScheme
                                                                      .inverseSurface),
                                                              textAlign:
                                                                  TextAlign.end,
                                                            ),
                                                          ))
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: size.width,
                                                height: 20.h,
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                        flex: 1,
                                                        child: SizedBox(
                                                          child: Text(
                                                            "Discount",
                                                            style: TextStyle(
                                                                fontSize: 13,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                color:
                                                                    colorGrey100),
                                                          ),
                                                        )),
                                                    Expanded(
                                                        flex: 1,
                                                        child: SizedBox(
                                                          child: Text("IDR 0",
                                                              style: TextStyle(
                                                                  fontSize: 13,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  color: lightColorScheme
                                                                      .inverseSurface),
                                                              textAlign:
                                                                  TextAlign
                                                                      .end),
                                                        ))
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: kDefaultPaddin20),
                                        child: SizedBox(
                                          width: size.width,
                                          height: 20.h,
                                          child: Row(
                                            children: [
                                              Expanded(
                                                  flex: 1,
                                                  child: SizedBox(
                                                    child: Text(
                                                      "Total order",
                                                      style: TextStyle(
                                                          fontSize: 13,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: colorGrey100),
                                                    ),
                                                  )),
                                              Expanded(
                                                  flex: 1,
                                                  child: Obx(
                                                    () => SizedBox(
                                                      child: Text(
                                                          controller
                                                                      .totalPrice
                                                                      .value !=
                                                                  0
                                                              ? "IDR ${formatter.format(controller.totalPrice.value)}"
                                                              : "IDR 0",
                                                          style: TextStyle(
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              color: lightColorScheme
                                                                  .inverseSurface),
                                                          textAlign:
                                                              TextAlign.end),
                                                    ),
                                                  ))
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  )),
                              barrierColor:
                                  const Color.fromARGB(69, 70, 70, 70),
                              isDismissible: false,
                            );
                          },
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
                                Obx(
                                  () => SizedBox(
                                    width: size.width,
                                    child: Row(
                                      children: [
                                        Text(
                                          controller.totalProductPrice.value !=
                                                  0
                                              ? "IDR ${formatter.format(controller.totalProductPrice.value)}"
                                              : "IDR 0",
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w700,
                                              color: lightColorScheme
                                                  .inverseSurface),
                                        ),
                                        Icon(
                                          Icons.keyboard_arrow_up_rounded,
                                          size: 24,
                                          color:
                                              lightColorScheme.inverseSurface,
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            if (controller.totalProduct.value > 0) {
                              // controller.checkout();
                            } else {
                              EasyLoading.showInfo('Produk belum dipilih!');
                            }
                          },
                          child: Obx(
                            () => Container(
                              height: 40.h,
                              decoration: BoxDecoration(
                                  color: colorPrimaryMain,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                  child: Text(
                                "Beli (${controller.totalProduct.value})",
                                style: TextStyle(
                                    color: lightColorScheme.background,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700),
                              )),
                            ),
                          ),
                        ))
                  ],
                ),
              ),
            ),
            borderRadius:
                const BorderRadius.vertical(top: Radius.circular(7))));
  }
}

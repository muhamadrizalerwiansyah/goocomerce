import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../configs/colorSchemes.dart';
import '../../../../configs/constant.dart';
import '../controllers/payment_method_controller.dart';

class PaymentMethodView extends GetView<PaymentMethodController> {
  PaymentMethodView({Key? key}) : super(key: key);
  final id = Get.arguments as String;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var formatter = NumberFormat('#,###,000');
    controller.getData(id);
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
          'Payment',
          style:
              TextStyle(color: lightColorScheme.inverseSurface, fontSize: 17),
        ),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        color: lightColorScheme.background,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPaddin20),
                child: SizedBox(
                  width: size.width,
                  child: Text(
                    "Choose Payment Method",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: lightColorScheme.inverseSurface),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),

              // TRANSFER BANK
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPaddin20),
                child: SizedBox(
                  width: size.width,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Transfer Bank",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: lightColorScheme.inverseSurface),
                            textAlign: TextAlign.start,
                          ),
                          Obx(
                            () => InkWell(
                              onTap: () {
                                controller.isViewBank.value =
                                    !controller.isViewBank.value;
                              },
                              child: Icon(
                                controller.isViewBank.value == false
                                    ? Icons.keyboard_arrow_down_rounded
                                    : Icons.keyboard_arrow_up_rounded,
                                size: 25,
                                color: lightColorScheme.inverseSurface,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Obx(
                        () => SizedBox(
                            width: size.width,
                            // height: 60.h,
                            child: controller.isViewBank.value == false
                                ? Column(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          controller
                                              .selectedPaymentMethod.value = 1;
                                        },
                                        child: Container(
                                          width: size.width,
                                          height: 55.h,
                                          decoration: BoxDecoration(
                                              color:
                                                  lightColorScheme.background,
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              border: Border.all(
                                                  width: 0.5,
                                                  color: colorGrey100)),
                                          child: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Row(
                                              children: [
                                                Expanded(
                                                    flex: 1,
                                                    child: SizedBox(
                                                      width: size.width,
                                                      child: SvgPicture.asset(
                                                        "assets/svg/BCA.svg",
                                                        width: 30.w,
                                                        height: 35.h,
                                                      ),
                                                    )),
                                                Expanded(
                                                    flex: 3,
                                                    child: SizedBox(
                                                      width: size.width,
                                                      child: Text(
                                                        "Bank BCA",
                                                        style: TextStyle(
                                                            fontSize: 13,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            color: lightColorScheme
                                                                .inverseSurface),
                                                        textAlign:
                                                            TextAlign.start,
                                                      ),
                                                    )),
                                                Expanded(
                                                    flex: 1,
                                                    child: Expanded(
                                                      flex: 1,
                                                      child: SizedBox(
                                                        child: Obx(
                                                          () => Radio(
                                                            value: 1,
                                                            activeColor:
                                                                colorPrimaryMain,
                                                            groupValue: controller
                                                                .selectedPaymentMethod
                                                                .value,
                                                            onChanged: (val) {
                                                              controller
                                                                  .selectedPaymentMethod
                                                                  .value = 1;
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                    ))
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          controller
                                              .selectedPaymentMethod.value = 2;
                                        },
                                        child: Container(
                                          width: size.width,
                                          height: 55.h,
                                          decoration: BoxDecoration(
                                              color:
                                                  lightColorScheme.background,
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              border: Border.all(
                                                  width: 0.5,
                                                  color: colorGrey100)),
                                          child: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Row(
                                              children: [
                                                Expanded(
                                                    flex: 1,
                                                    child: SizedBox(
                                                      width: size.width,
                                                      child: SvgPicture.asset(
                                                        "assets/svg/BRI.svg",
                                                        width: 30.w,
                                                        height: 35.h,
                                                      ),
                                                    )),
                                                Expanded(
                                                    flex: 3,
                                                    child: SizedBox(
                                                      width: size.width,
                                                      child: Text(
                                                        "Bank BRI",
                                                        style: TextStyle(
                                                            fontSize: 13,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            color: lightColorScheme
                                                                .inverseSurface),
                                                        textAlign:
                                                            TextAlign.start,
                                                      ),
                                                    )),
                                                Expanded(
                                                    flex: 1,
                                                    child: Expanded(
                                                      flex: 1,
                                                      child: SizedBox(
                                                        child: Obx(
                                                          () => Radio(
                                                            value: 2,
                                                            activeColor:
                                                                colorPrimaryMain,
                                                            groupValue: controller
                                                                .selectedPaymentMethod
                                                                .value,
                                                            onChanged: (val) {
                                                              controller
                                                                  .selectedPaymentMethod
                                                                  .value = 2;
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                    ))
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          controller
                                              .selectedPaymentMethod.value = 3;
                                        },
                                        child: Container(
                                          width: size.width,
                                          height: 55.h,
                                          decoration: BoxDecoration(
                                              color:
                                                  lightColorScheme.background,
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              border: Border.all(
                                                  width: 0.5,
                                                  color: colorGrey100)),
                                          child: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Row(
                                              children: [
                                                Expanded(
                                                    flex: 1,
                                                    child: SizedBox(
                                                      width: size.width,
                                                      child: SvgPicture.asset(
                                                        "assets/svg/BNI.svg",
                                                        width: 30.w,
                                                        height: 35.h,
                                                      ),
                                                    )),
                                                Expanded(
                                                    flex: 3,
                                                    child: SizedBox(
                                                      width: size.width,
                                                      child: Text(
                                                        "Bank BNI",
                                                        style: TextStyle(
                                                            fontSize: 13,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            color: lightColorScheme
                                                                .inverseSurface),
                                                        textAlign:
                                                            TextAlign.start,
                                                      ),
                                                    )),
                                                Expanded(
                                                    flex: 1,
                                                    child: Expanded(
                                                      flex: 1,
                                                      child: SizedBox(
                                                        child: Obx(
                                                          () => Radio(
                                                            value: 3,
                                                            activeColor:
                                                                colorPrimaryMain,
                                                            groupValue: controller
                                                                .selectedPaymentMethod
                                                                .value,
                                                            onChanged: (val) {
                                                              controller
                                                                  .selectedPaymentMethod
                                                                  .value = 3;
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                    ))
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          controller
                                              .selectedPaymentMethod.value = 4;
                                        },
                                        child: Container(
                                          width: size.width,
                                          height: 55.h,
                                          decoration: BoxDecoration(
                                              color:
                                                  lightColorScheme.background,
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              border: Border.all(
                                                  width: 0.5,
                                                  color: colorGrey100)),
                                          child: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Row(
                                              children: [
                                                Expanded(
                                                    flex: 1,
                                                    child: SizedBox(
                                                      width: size.width,
                                                      child: SvgPicture.asset(
                                                        "assets/svg/PERMATA.svg",
                                                        width: 30.w,
                                                        height: 35.h,
                                                      ),
                                                    )),
                                                Expanded(
                                                    flex: 3,
                                                    child: SizedBox(
                                                      width: size.width,
                                                      child: Text(
                                                        "Bank Permata",
                                                        style: TextStyle(
                                                            fontSize: 13,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            color: lightColorScheme
                                                                .inverseSurface),
                                                        textAlign:
                                                            TextAlign.start,
                                                      ),
                                                    )),
                                                Expanded(
                                                    flex: 1,
                                                    child: Expanded(
                                                      flex: 1,
                                                      child: SizedBox(
                                                        child: Obx(
                                                          () => Radio(
                                                            value: 4,
                                                            activeColor:
                                                                colorPrimaryMain,
                                                            groupValue: controller
                                                                .selectedPaymentMethod
                                                                .value,
                                                            onChanged: (val) {
                                                              controller
                                                                  .selectedPaymentMethod
                                                                  .value = 4;
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                    ))
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          controller
                                              .selectedPaymentMethod.value = 5;
                                        },
                                        child: Container(
                                          width: size.width,
                                          height: 55.h,
                                          decoration: BoxDecoration(
                                              color:
                                                  lightColorScheme.background,
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              border: Border.all(
                                                  width: 0.5,
                                                  color: colorGrey100)),
                                          child: Padding(
                                            padding: const EdgeInsets.all(5.0),
                                            child: Row(
                                              children: [
                                                Expanded(
                                                    flex: 1,
                                                    child: SizedBox(
                                                      width: size.width,
                                                      child: SvgPicture.asset(
                                                        "assets/svg/MANDIRI.svg",
                                                        width: 30.w,
                                                        height: 35.h,
                                                      ),
                                                    )),
                                                Expanded(
                                                    flex: 3,
                                                    child: SizedBox(
                                                      width: size.width,
                                                      child: Text(
                                                        "Bank Mandiri",
                                                        style: TextStyle(
                                                            fontSize: 13,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            color: lightColorScheme
                                                                .inverseSurface),
                                                        textAlign:
                                                            TextAlign.start,
                                                      ),
                                                    )),
                                                Expanded(
                                                    flex: 1,
                                                    child: Expanded(
                                                      flex: 1,
                                                      child: SizedBox(
                                                        child: Obx(
                                                          () => Radio(
                                                            value: 5,
                                                            activeColor:
                                                                colorPrimaryMain,
                                                            groupValue: controller
                                                                .selectedPaymentMethod
                                                                .value,
                                                            onChanged: (val) {
                                                              controller
                                                                  .selectedPaymentMethod
                                                                  .value = 5;
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                    ))
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      )
                                    ],
                                  )
                                : Container()),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),

              //E-WALLET
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPaddin20),
                child: InkWell(
                  onTap: () {
                    controller.isViewWallet.value =
                        !controller.isViewWallet.value;
                  },
                  child: SizedBox(
                    width: size.width,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "E-wallet",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: lightColorScheme.inverseSurface),
                              textAlign: TextAlign.start,
                            ),
                            Obx(
                              () => InkWell(
                                onTap: () {
                                  controller.isViewWallet.value =
                                      !controller.isViewWallet.value;
                                },
                                child: Icon(
                                  controller.isViewWallet.value == false
                                      ? Icons.keyboard_arrow_down_rounded
                                      : Icons.keyboard_arrow_up_rounded,
                                  size: 25,
                                  color: lightColorScheme.inverseSurface,
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Obx(
                          () => SizedBox(
                              width: size.width,
                              // height: 60.h,
                              child: controller.isViewWallet.value == false
                                  ? Column(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            controller.selectedPaymentMethod
                                                .value = 6;
                                          },
                                          child: Container(
                                            width: size.width,
                                            height: 55.h,
                                            decoration: BoxDecoration(
                                                color:
                                                    lightColorScheme.background,
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                border: Border.all(
                                                    width: 0.5,
                                                    color: colorGrey100)),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                      flex: 1,
                                                      child: SizedBox(
                                                        width: size.width,
                                                        child: SvgPicture.asset(
                                                          "assets/svg/OVO.svg",
                                                          width: 30.w,
                                                          height: 35.h,
                                                        ),
                                                      )),
                                                  Expanded(
                                                      flex: 3,
                                                      child: SizedBox(
                                                        width: size.width,
                                                        child: Text(
                                                          "OVO",
                                                          style: TextStyle(
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              color: lightColorScheme
                                                                  .inverseSurface),
                                                          textAlign:
                                                              TextAlign.start,
                                                        ),
                                                      )),
                                                  Expanded(
                                                      flex: 1,
                                                      child: Expanded(
                                                        flex: 1,
                                                        child: SizedBox(
                                                          child: Obx(
                                                            () => Radio(
                                                              value: 6,
                                                              activeColor:
                                                                  colorPrimaryMain,
                                                              groupValue: controller
                                                                  .selectedPaymentMethod
                                                                  .value,
                                                              onChanged: (val) {
                                                                controller
                                                                    .selectedPaymentMethod
                                                                    .value = 6;
                                                              },
                                                            ),
                                                          ),
                                                        ),
                                                      ))
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            controller.selectedPaymentMethod
                                                .value = 7;
                                          },
                                          child: Container(
                                            width: size.width,
                                            height: 55.h,
                                            decoration: BoxDecoration(
                                                color:
                                                    lightColorScheme.background,
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                border: Border.all(
                                                    width: 0.5,
                                                    color: colorGrey100)),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                      flex: 1,
                                                      child: SizedBox(
                                                        width: size.width,
                                                        child: SvgPicture.asset(
                                                          "assets/svg/DANA.svg",
                                                          width: 30.w,
                                                          height: 35.h,
                                                        ),
                                                      )),
                                                  Expanded(
                                                      flex: 3,
                                                      child: SizedBox(
                                                        width: size.width,
                                                        child: Text(
                                                          "DANA",
                                                          style: TextStyle(
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              color: lightColorScheme
                                                                  .inverseSurface),
                                                          textAlign:
                                                              TextAlign.start,
                                                        ),
                                                      )),
                                                  Expanded(
                                                      flex: 1,
                                                      child: Expanded(
                                                        flex: 1,
                                                        child: SizedBox(
                                                          child: Obx(
                                                            () => Radio(
                                                              value: 7,
                                                              activeColor:
                                                                  colorPrimaryMain,
                                                              groupValue: controller
                                                                  .selectedPaymentMethod
                                                                  .value,
                                                              onChanged: (val) {
                                                                controller
                                                                    .selectedPaymentMethod
                                                                    .value = 7;
                                                              },
                                                            ),
                                                          ),
                                                        ),
                                                      ))
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            controller.selectedPaymentMethod
                                                .value = 8;
                                          },
                                          child: Container(
                                            width: size.width,
                                            height: 55.h,
                                            decoration: BoxDecoration(
                                                color:
                                                    lightColorScheme.background,
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                border: Border.all(
                                                    width: 0.5,
                                                    color: colorGrey100)),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                      flex: 1,
                                                      child: SizedBox(
                                                        width: size.width,
                                                        child: SvgPicture.asset(
                                                          "assets/svg/SHOPEEPAY.svg",
                                                          width: 30.w,
                                                          height: 35.h,
                                                        ),
                                                      )),
                                                  Expanded(
                                                      flex: 3,
                                                      child: SizedBox(
                                                        width: size.width,
                                                        child: Text(
                                                          "ShopeePay",
                                                          style: TextStyle(
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              color: lightColorScheme
                                                                  .inverseSurface),
                                                          textAlign:
                                                              TextAlign.start,
                                                        ),
                                                      )),
                                                  Expanded(
                                                      flex: 1,
                                                      child: Expanded(
                                                        flex: 1,
                                                        child: SizedBox(
                                                          child: Obx(
                                                            () => Radio(
                                                              value: 8,
                                                              activeColor:
                                                                  colorPrimaryMain,
                                                              groupValue: controller
                                                                  .selectedPaymentMethod
                                                                  .value,
                                                              onChanged: (val) {
                                                                controller
                                                                    .selectedPaymentMethod
                                                                    .value = 8;
                                                              },
                                                            ),
                                                          ),
                                                        ),
                                                      ))
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            controller.selectedPaymentMethod
                                                .value = 9;
                                          },
                                          child: Container(
                                            width: size.width,
                                            height: 55.h,
                                            decoration: BoxDecoration(
                                                color:
                                                    lightColorScheme.background,
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                border: Border.all(
                                                    width: 0.5,
                                                    color: colorGrey100)),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                      flex: 1,
                                                      child: SizedBox(
                                                        width: size.width,
                                                        child: SvgPicture.asset(
                                                          "assets/svg/LINKAJA.svg",
                                                          width: 30.w,
                                                          height: 35.h,
                                                        ),
                                                      )),
                                                  Expanded(
                                                      flex: 3,
                                                      child: SizedBox(
                                                        width: size.width,
                                                        child: Text(
                                                          "LinkAja",
                                                          style: TextStyle(
                                                              fontSize: 13,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                              color: lightColorScheme
                                                                  .inverseSurface),
                                                          textAlign:
                                                              TextAlign.start,
                                                        ),
                                                      )),
                                                  Expanded(
                                                      flex: 1,
                                                      child: Expanded(
                                                        flex: 1,
                                                        child: SizedBox(
                                                          child: Obx(
                                                            () => Radio(
                                                              value: 9,
                                                              activeColor:
                                                                  colorPrimaryMain,
                                                              groupValue: controller
                                                                  .selectedPaymentMethod
                                                                  .value,
                                                              onChanged: (val) {
                                                                controller
                                                                    .selectedPaymentMethod
                                                                    .value = 9;
                                                              },
                                                            ),
                                                          ),
                                                        ),
                                                      ))
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        )
                                      ],
                                    )
                                  : Container()),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 20.h,
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPaddin20),
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
                height: 15.h,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPaddin20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Obx(
                      () => Text(
                        "Total product (${controller.totalProduct.value})",
                        style: TextStyle(
                            color: lightColorScheme.outline,
                            fontSize: 13,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Obx(
                      () => Text(
                        "IDR ${formatter.format(controller.initialPrice.value)}",
                        style: TextStyle(
                            color: lightColorScheme.inverseSurface,
                            fontSize: 13,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5.h,
              ),

              SizedBox(
                height: 15.h,
              ),
              Container(
                width: size.width,
                height: 8.h,
                color: colorGrey600,
              ),
              SizedBox(
                height: 15.h,
              ),
              SizedBox(
                width: size.width,
                height: 50.h,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPaddin20),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Total Order",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: colorGrey100),
                              ),
                              SizedBox(
                                width: size.width,
                                child: Row(
                                  children: [
                                    Obx(
                                      () => Text(
                                        "IDR ${formatter.format(controller.initialPrice.value)}",
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w700,
                                            color: lightColorScheme
                                                .inverseSurface),
                                      ),
                                    ),
                                    Icon(
                                      Icons.keyboard_arrow_up_rounded,
                                      size: 24,
                                      color: lightColorScheme.inverseSurface,
                                    )
                                  ],
                                ),
                              )
                            ],
                          )),
                      Expanded(
                          flex: 1,
                          child: Obx(
                            () => InkWell(
                              onTap: () {
                                if (controller.selectedPaymentMethod.value ==
                                    0) {
                                  EasyLoading.showInfo(
                                      'Choose a payment method first.');
                                } else {
                                  // controller.payment(
                                  //     invoiceId,
                                  //     controller.selectedPaymentMethod.value,
                                  //     orderList,
                                  //     controller.fee.value);
                                }
                              },
                              child: Container(
                                height: 45.h,
                                decoration: BoxDecoration(
                                    color: controller
                                                .selectedPaymentMethod.value ==
                                            0
                                        ? colorGrey100
                                        : colorPrimaryMain,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                    child: Text(
                                  "Pay",
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
              SizedBox(
                height: 20.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}

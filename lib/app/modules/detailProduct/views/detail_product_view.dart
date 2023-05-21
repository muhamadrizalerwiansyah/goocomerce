import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:goocommerce/app/modules/detailProduct/views/widgets/ShimmerDetailProductWidget.dart';
import 'package:goocommerce/configs/constant.dart';
import 'package:shimmer/shimmer.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../../../configs/colorSchemes.dart';
import '../../../routes/app_pages.dart';
import '../../home/cart/controllers/cart_controller.dart';
import '../controllers/detail_product_controller.dart';

class DetailProductView extends GetView<DetailProductController> {
  DetailProductView({Key? key}) : super(key: key);
  final id = Get.arguments as String;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    controller.getDetail(id);
    final cartController = Get.find<CartController>();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: lightColorScheme.background,
          elevation: 0.1,
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(1),
              child: Container(
                color: colorGrey400,
                height: 0.5,
              )),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: lightColorScheme.onSurfaceVariant,
            ),
            onPressed: () => Get.back(),
          ),
          title: Row(
            children: [
              SizedBox(
                width: 250.w,
                height: 35.h,
              ),
              SizedBox(
                width: 10.w,
              ),
              InkWell(
                onTap: () => Get.toNamed(Routes.CART),
                child: Stack(
                  children: [
                    Icon(
                      Icons.shopping_cart_outlined,
                      color: lightColorScheme.inverseSurface,
                      size: 23,
                    ),
                    Obx(
                      () => cartController.cartList.isNotEmpty
                          ? Positioned(
                              right: 0,
                              top: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: colorRedFaded,
                                    shape: BoxShape.circle),
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Obx(
                                    () => Text(
                                      cartController.cartList.length.toString(),
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          : Container(),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        body: Obx(
          () => controller.isLoadingDetailShimmer == true
              ? SlidingUpPanel(
                  maxHeight: size.height / 11,
                  minHeight: size.height / 11,
                  body: Container(
                    width: size.width,
                    height: size.height,
                    color: lightColorScheme.background,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPaddin20,
                          vertical: kDefaultPaddin10),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            Obx(() => Container(
                                  width: size.width,
                                  height: 300.h,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "${dotenv.env['URL_IMAGE']}${controller.image.value}"),
                                          fit: BoxFit.fill)),
                                )),
                            SizedBox(
                              height: 5.h,
                            ),
                            SizedBox(
                              width: size.width,
                              child: Obx(
                                () => Text(
                                  controller.categoryName.value,
                                  style: TextStyle(
                                      color: colorPrimaryMain,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            SizedBox(
                              width: size.width,
                              child: Obx(
                                () => Text(
                                  controller.name.value,
                                  style: TextStyle(
                                      color: lightColorScheme.inverseSurface,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            SizedBox(
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.star_rounded,
                                    size: 15,
                                    color: Color.fromARGB(255, 255, 203, 59),
                                  ),
                                  SizedBox(
                                    width: 3.w,
                                  ),
                                  Text(
                                    "100",
                                    style: TextStyle(
                                        fontSize: 11, color: colorGrey100),
                                  ),
                                  SizedBox(
                                    width: 3.w,
                                  ),
                                  Text(
                                    "|",
                                    style: TextStyle(
                                        fontSize: 11, color: colorGrey100),
                                  ),
                                  SizedBox(
                                    width: 3.w,
                                  ),
                                  Text(
                                    "300",
                                    style: TextStyle(
                                        fontSize: 11, color: colorGrey100),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            SizedBox(
                              width: size.width,
                              child: Text(
                                "Description",
                                style: TextStyle(
                                    color: lightColorScheme.inverseSurface,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            SizedBox(
                              width: size.width,
                              child: Obx(
                                () => Text(
                                  controller.description.value,
                                  style: TextStyle(
                                      color: colorGrey100,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 170.h,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  panel: SizedBox(
                    width: size.width,
                    height: size.height,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: kDefaultPaddin10,
                          horizontal: kDefaultPaddin20),
                      child: Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Price",
                                    style: TextStyle(
                                        color: colorGrey100,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Obx(
                                    () => Text(
                                      controller.price.value,
                                      style: TextStyle(
                                          color: colorPrimaryMain,
                                          fontSize: 17,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  )
                                ],
                              )),
                          Expanded(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                      color: Color.fromARGB(255, 245, 245, 245),
                                      spreadRadius: 2,
                                      blurRadius: 2,
                                      offset: Offset(0, 1) // Shadow position
                                      ),
                                ],
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                      flex: 2,
                                      child: InkWell(
                                        onTap: () =>
                                            cartController.addToCart(id),
                                        child: Container(
                                          width: size.width,
                                          height: size.height,
                                          decoration: BoxDecoration(
                                              color: colorPrimaryMain,
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(5),
                                                  bottomLeft:
                                                      Radius.circular(5))),
                                          child: Icon(
                                            Icons.shopping_cart_outlined,
                                            color: Colors.white,
                                            size: 25,
                                          ),
                                        ),
                                      )),
                                  Expanded(
                                      flex: 3,
                                      child: Container(
                                        width: size.width,
                                        height: size.height,
                                        decoration: BoxDecoration(
                                            color: colorGrey,
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(5),
                                                bottomRight:
                                                    Radius.circular(5))),
                                        child: Center(
                                            child: Text(
                                          "Buy Now",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600),
                                        )),
                                      ))
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(7)))
              : Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Shimmer.fromColors(
                    baseColor: Colors.grey.shade300,
                    highlightColor: Colors.white,
                    loop: 100,
                    child: const ShimmerDetailProductLoad(),
                  ),
                ),
        ));
  }
}

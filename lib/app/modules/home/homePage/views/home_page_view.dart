import 'package:appbar_animated/appbar_animated.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_launcher_icons/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:goocommerce/app/data/model/category_product.dart';
import 'package:goocommerce/app/data/model/product.dart';
import 'package:goocommerce/app/modules/home/homePage/views/widgets/carouselSliderWidget.dart';
import 'package:goocommerce/app/modules/home/homePage/views/widgets/itemCategoryWidget.dart';
import 'package:goocommerce/app/routes/app_pages.dart';
import 'package:goocommerce/configs/colorSchemes.dart';
import 'package:goocommerce/configs/constant.dart';
import 'package:intl/intl.dart';

import '../controllers/home_page_controller.dart';

class HomePageView extends GetView<HomePageController> {
  const HomePageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2.5;
    final double itemWidth = size.width / 2;
    return Scaffold(
      body: ScaffoldLayoutBuilder(
        backgroundColorAppBar:
            const ColorBuilder(Colors.transparent, Colors.white),
        textColorAppBar: ColorBuilder(lightColorScheme.inverseSurface),
        appBarHeight: 50.h,
        duration: const Duration(microseconds: 3),
        appBarBuilder: _appBar,
        child: Container(
          width: size.width,
          height: size.height,
          color: colorGrey900,
          child: SingleChildScrollView(
            child: Column(
              children: [
                CarouselSliderWidget(c: controller),
                Container(
                  width: size.width,
                  height: 80.h,
                  color: lightColorScheme.background,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 20.w,
                        ),
                        // Obx(
                        //   () => ItemCategoryWidget(
                        //     size: size,
                        //     id: "All",
                        //     title: "All",
                        //     status: controller.menuActive.value == "All"
                        //         ? true
                        //         : false,
                        //     icons: Icons.dashboard_outlined,
                        //     controller: controller,
                        //   ),
                        // ),
                        Obx(
                          () => ListView.builder(
                              itemCount: controller.categoryList.length,
                              scrollDirection: Axis.horizontal,
                              padding: const EdgeInsets.only(top: 0, left: 0),
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (BuildContext ctxt, int index) {
                                CategoryProduct item =
                                    controller.categoryList[index];
                                return Obx(
                                  () => ItemCategoryWidget(
                                    size: size,
                                    id: item.id,
                                    title: item.code,
                                    status:
                                        controller.menuActive.value == item.id
                                            ? true
                                            : false,
                                    icons: Icons.dashboard_outlined,
                                    controller: controller,
                                  ),
                                );
                              }),
                        )

                        // Obx(
                        //   () => ItemCategoryWidget(
                        //     size: size,
                        //     id: "-",
                        //     title: "FMCG",
                        //     status: controller.menuActive.value == "FMCG"
                        //         ? true
                        //         : false,
                        //     icons: Icons.shopify,
                        //     controller: controller,
                        //   ),
                        // ),
                        // Obx(
                        //   () => ItemCategoryWidget(
                        //     size: size,
                        //     id: "-",
                        //     title: "PRSBL",
                        //     status: controller.menuActive.value == "PRSBL"
                        //         ? true
                        //         : false,
                        //     icons: Icons.track_changes,
                        //     controller: controller,
                        //   ),
                        // ),
                        // Obx(
                        //   () => ItemCategoryWidget(
                        //     size: size,
                        //     id: "-",
                        //     title: "SPCS",
                        //     status: controller.menuActive.value == "SPCS"
                        //         ? true
                        //         : false,
                        //     icons: Icons.yard_outlined,
                        //     controller: controller,
                        //   ),
                        // ),
                        // Obx(
                        //   () => ItemCategoryWidget(
                        //     size: size,
                        //     id: "-",
                        //     title: "RNWE",
                        //     status: controller.menuActive.value == "RNWE"
                        //         ? true
                        //         : false,
                        //     icons: Icons.attractions_outlined,
                        //     controller: controller,
                        //   ),
                        // )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPaddin20),
                  child: SizedBox(
                    width: size.width,
                    height: 20.h,
                    // color: colorPrimaryMain,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Best Sale Product",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: lightColorScheme.inverseSurface),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "See more",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: colorPrimaryMain),
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
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Obx(() => GridView.count(
                          crossAxisCount: 2,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          childAspectRatio: (itemWidth / itemHeight),
                          padding: const EdgeInsets.only(top: 0),
                          physics: const NeverScrollableScrollPhysics(),
                          children: List.generate(controller.productLis.length,
                              (index) {
                            Product item = controller.productLis[index];
                            var formatter = NumberFormat('#,###,000');

                            return ItemProductWidget(
                              size: size,
                              id: item.id,
                              image: item.photos!,
                              category: item.nameCategory!,
                              title: item.name,
                              review: "4,5",
                              totalBuy: "500",
                              price: "IDR ${formatter.format(item.price)}",
                            );
                          }),
                        ))

                    //  GridView.count(
                    //   shrinkWrap: true,
                    //   scrollDirection: Axis.vertical,
                    //   childAspectRatio: (itemWidth / itemHeight),
                    //   padding: const EdgeInsets.only(top: 0),
                    //   physics: const NeverScrollableScrollPhysics(),
                    //   crossAxisCount: 2,
                    //   children: <Widget>[
                    //     ItemProductWidget(
                    //       size: size,
                    //       image: "assets/images/goodDrink.jpeg",
                    //       category: "FMCG",
                    //       title: "GOOD DRINK Chocolate - AlMENDRA",
                    //       review: "4,5",
                    //       totalBuy: "100",
                    //       price: "50",
                    //     ),
                    //     ItemProductWidget(
                    //       size: size,
                    //       image: "assets/images/pala.jpeg",
                    //       category: "SPCS",
                    //       title: "PALA - Indonesia",
                    //       review: "4,5",
                    //       totalBuy: "500",
                    //       price: "10",
                    //     ),
                    //     ItemProductWidget(
                    //       size: size,
                    //       image: "assets/images/rengginang.jpeg",
                    //       category: "FMCG",
                    //       title: "RENGGINANG - Indonesia",
                    //       review: "4,5",
                    //       totalBuy: "500",
                    //       price: "10",
                    //     ),
                    //     ItemProductWidget(
                    //       size: size,
                    //       image: "assets/images/ikanMujair.jpeg",
                    //       category: "PRSBL",
                    //       title: "Red Tilapia Fish",
                    //       review: "4,5",
                    //       totalBuy: "500",
                    //       price: "20",
                    //     ),
                    //   ],
                    // ),
                    )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _appBar(BuildContext context, ColorAnimated colorAnimated) {
    return AppBar(
      backgroundColor: colorAnimated.background,
      shadowColor: colorGrey400,
      scrolledUnderElevation: 0.2,
      elevation: 0,
      bottomOpacity: 2,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 300.w,
            height: 35.h,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(
                color: colorGrey400,
                width: 0.5,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Icon(
                    Icons.search,
                    color: colorGrey100,
                    size: 20,
                  ),
                ),
                Expanded(
                  child: TextField(
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search...",
                      hintStyle: TextStyle(color: colorGrey100),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 8),
                      isDense: true,
                    ),
                    style: TextStyle(
                      fontSize: 14.0,
                      color: colorGrey400,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Icon(
            Icons.notifications_none_rounded,
            color: lightColorScheme.inverseSurface,
            size: 23,
          ),
        ],
      ),
    );
  }
}

class ItemProductWidget extends StatelessWidget {
  const ItemProductWidget({
    super.key,
    required this.size,
    required this.id,
    required this.image,
    required this.category,
    required this.title,
    required this.review,
    required this.totalBuy,
    required this.price,
  });

  final Size size;
  final String id;
  final String image;
  final String category;
  final String title;
  final String review;
  final String totalBuy;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPaddin5, vertical: kDefaultPaddin5),
      child: InkWell(
        onTap: () {
          Get.toNamed(Routes.DETAIL_PRODUCT, arguments: id);
        },
        child: Container(
          width: size.width / 2 - 30.w,
          height: 250.h,
          decoration: BoxDecoration(
              color: lightColorScheme.background,
              boxShadow: const [
                BoxShadow(
                    color: Color.fromARGB(255, 245, 245, 245),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: Offset(0, 1) // Shadow position
                    ),
              ],
              borderRadius: BorderRadius.circular(5)),
          child: Column(
            children: [
              Expanded(
                  flex: 3,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5)),
                        image: DecorationImage(
                            image: NetworkImage(
                                "${dotenv.env['URL_IMAGE']}$image"),
                            fit: BoxFit.fill)),
                  )),
              Expanded(
                  flex: 2,
                  child: SizedBox(
                    width: size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        children: [
                          Expanded(
                              flex: 2,
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: size.width,
                                    child: Text(
                                      category,
                                      style: TextStyle(
                                          color: colorGrey100,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  SizedBox(
                                    width: size.width,
                                    child: Text(
                                      title,
                                      style: TextStyle(
                                          color:
                                              lightColorScheme.inverseSurface,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ],
                              )),
                          Expanded(
                            flex: 1,
                            child: SizedBox(
                              width: size.width,
                              // height: 10.h,
                              child: Row(
                                children: [
                                  Expanded(
                                      flex: 1,
                                      child: SizedBox(
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.star_rounded,
                                              size: 15,
                                              color: Color.fromARGB(
                                                  255, 255, 203, 59),
                                            ),
                                            SizedBox(
                                              width: 3.w,
                                            ),
                                            Text(
                                              review,
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: colorGrey100),
                                            ),
                                            SizedBox(
                                              width: 3.w,
                                            ),
                                            Text(
                                              "|",
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: colorGrey100),
                                            ),
                                            SizedBox(
                                              width: 3.w,
                                            ),
                                            Text(
                                              totalBuy,
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: colorGrey100),
                                            )
                                          ],
                                        ),
                                      )),
                                  Expanded(
                                      flex: 1,
                                      child: SizedBox(
                                        child: Text(
                                          price,
                                          style: TextStyle(
                                              color: colorPrimaryMain,
                                              fontSize: 11,
                                              fontWeight: FontWeight.w700),
                                          textAlign: TextAlign.end,
                                        ),
                                      ))
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

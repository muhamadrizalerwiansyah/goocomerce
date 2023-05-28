// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../../../configs/colorSchemes.dart';
import '../../../../../../configs/constant.dart';
import '../../../../../routes/app_pages.dart';

class ItemHistoryOrderWidget extends StatelessWidget {
  const ItemHistoryOrderWidget({
    super.key,
    required this.id,
    required this.size,
    required this.image,
    required this.name,
    required this.weight,
    required this.status,
    required this.discount,
    required this.price,
    required this.codeOrder,
    required this.countProduct,
    required this.totalPrice,
    required this.initialPrice,
    required this.qty,
    required this.dateTime,
    required this.urlPayment,
    required this.paidAt,
  });

  final String id;
  final Size size;
  final String image;
  final String name;
  final String weight;
  final String status;
  final String discount;
  final String price;
  final String codeOrder;
  final String countProduct;
  final String totalPrice;
  final String initialPrice;
  final int qty;
  final String dateTime;
  final String urlPayment;
  final String paidAt;
  @override
  Widget build(BuildContext context) {
    var statusName = "";
    Color colorContain = const Color(0xFF33CC99);
    Color colorLabel = const Color(0xFFedf6f9);
    if (status == "PENDING") {
      statusName = "Pending";
      colorContain = const Color.fromARGB(84, 255, 170, 0);
      colorLabel = const Color(0xFFB76E00);
    } else if (status == "PROCESS") {
      statusName = "Process";
      colorContain = const Color.fromARGB(79, 0, 184, 217);
      colorLabel = const Color(0xFF006C9C);
    } else if (status == "WAITING TO TAKEN") {
      statusName = "Waiting To Taken";
      colorContain = Color.fromARGB(79, 0, 11, 217);
      colorLabel = Color.fromARGB(255, 0, 63, 90);
    } else if (status == "COMPLETE") {
      statusName = "Complete";
      colorContain = const Color.fromARGB(63, 51, 204, 153);
      colorLabel = const Color(0xFF33CC99);
    } else {
      statusName = "Cancel";
      colorContain = Color.fromARGB(62, 204, 92, 51);
      colorLabel = colorRedFaded;
    }
    RegExp regex = RegExp(r'([.]*0)(?!.*\d)');
    String disc = discount.toString().replaceAll(regex, '');

    DateTime parseDate =
        DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'").parse(dateTime);
    var inputDate = DateTime.parse(parseDate.toString());
    var outputFormat = DateFormat('dd MMMM yyyy hh:mm');
    var outputDate = outputFormat.format(inputDate);
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPaddin20, vertical: kDefaultPaddin10),
      child: Container(
        width: size.width,
        height: 240.h,
        decoration: BoxDecoration(
            color: lightColorScheme.background,
            boxShadow: const [
              BoxShadow(
                  color: Color.fromARGB(255, 236, 236, 236),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(0, 1) // Shadow position
                  ),
            ],
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Container(
              width: size.width,
              height: 60.h,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 1, color: colorGrey600))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.shopping_cart_outlined,
                          size: 25,
                          color: colorPrimaryMain,
                        )),
                    Expanded(
                        flex: 4,
                        child: SizedBox(
                          width: size.width,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: size.width,
                                child: Text(
                                  "Order",
                                  style: TextStyle(
                                      color: lightColorScheme.inverseSurface,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              SizedBox(
                                width: size.width,
                                child: Text(
                                  "$outputDate WIB",
                                  style: TextStyle(
                                      color: colorGrey100,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300),
                                ),
                              )
                            ],
                          ),
                        )),
                    Expanded(
                        flex: 3,
                        child: Container(
                          width: size.width,
                          decoration: BoxDecoration(
                              color: colorContain,
                              borderRadius: BorderRadius.circular(8)),
                          child: Center(
                            child: Text(
                              statusName,
                              style: TextStyle(
                                  color: colorLabel,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ))
                  ],
                ),
              ),
            ),
            Container(
              width: size.width,
              height: 120.h,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 1, color: colorGrey600))),
              child: Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 10.h,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: kDefaultPaddin10),
                              child: Container(
                                width: size.width,
                                height: 100.h,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "${dotenv.env['URL_IMAGE']}$image"),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            )
                          ],
                        ),
                      )),
                  Expanded(
                      flex: 4,
                      child: SizedBox(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10.h,
                            ),
                            SizedBox(
                              width: size.width,
                              child: Text(
                                name,
                                style: TextStyle(
                                    color: lightColorScheme.inverseSurface,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              width: size.width,
                              child: Text(
                                "Qty : $qty",
                                style: TextStyle(
                                    color: lightColorScheme.outline,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            SizedBox(
                              width: size.width,
                              child: Text(
                                disc != "0"
                                    ? "1 x $initialPrice"
                                    : "1 x $price",
                                style: TextStyle(
                                    color: lightColorScheme.onSurfaceVariant,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        ),
                      ))
                ],
              ),
            ),
            // Container(
            //   width: size.width,
            //   height: 50.h,
            //   decoration: BoxDecoration(
            //       border: Border(
            //           bottom: BorderSide(width: 1, color: colorGrey600))),
            //   child: Padding(
            //     padding:
            //         const EdgeInsets.symmetric(horizontal: kDefaultPaddin10),
            //     child: Row(
            //       children: [
            //         Expanded(
            //             flex: 1,
            //             child: SizedBox(
            //               child: Text(
            //                 "ID Pesanan",
            //                 style: TextStyle(
            //                     fontSize: 13,
            //                     fontWeight: FontWeight.w600,
            //                     color: colorGrey100),
            //               ),
            //             )),
            //         Expanded(
            //             flex: 1,
            //             child: SizedBox(
            //               child: Text(codeOrder,
            //                   style: TextStyle(
            //                       fontSize: 13,
            //                       fontWeight: FontWeight.w700,
            //                       color: lightColorScheme.outline),
            //                   textAlign: TextAlign.end),
            //             ))
            //       ],
            //     ),
            //   ),
            // ),
            SizedBox(
              width: size.width,
              height: 50.h,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPaddin10),
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: SizedBox(
                          child: Text(
                            "Order Totals ($countProduct Product)",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: colorGrey100),
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: SizedBox(
                          child: Text(totalPrice,
                              style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  color: lightColorScheme.outline),
                              textAlign: TextAlign.end),
                        ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

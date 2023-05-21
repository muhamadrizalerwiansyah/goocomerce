// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../configs/colorSchemes.dart';
import '../../../../../../configs/constant.dart';
import '../../controllers/cart_controller.dart';

class ItemCartWidget extends StatelessWidget {
  const ItemCartWidget({
    super.key,
    required this.id,
    required this.size,
    required this.image,
    required this.name,
    required this.weight,
    required this.status,
    required this.isActive,
    required this.discount,
    required this.price,
    required this.initialPrice,
    required this.qty,
    required this.controler,
  });

  final String id;
  final Size size;
  final String image;
  final String name;
  final String weight;
  final bool status;
  final bool isActive;
  final String discount;
  final String price;
  final String initialPrice;
  final int qty;
  final CartController controler;

  @override
  Widget build(BuildContext context) {
    RegExp regex = RegExp(r'([.]*0)(?!.*\d)');
    String disc = discount.toString().replaceAll(regex, '');
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPaddin20, vertical: kDefaultPaddin5),
      child: SizedBox(
        width: size.width,
        height: 122.h,
        // color: colorPrimaryMain,
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: SizedBox(
                  child: Checkbox(
                    value: status,
                    checkColor: Colors.white,
                    activeColor: colorPrimaryMain,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                    onChanged: (isChecked) {
                      isChecked ?? true;
                      controler.checkedProduct(id, status);
                    },
                  ),
                )),
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromARGB(255, 236, 236, 236),
                          spreadRadius: 1,
                          blurRadius: 10,
                          offset: Offset(0, 1) // Shadow position
                          ),
                    ],
                    color: lightColorScheme.background,
                    borderRadius: BorderRadius.circular(10)),
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
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                              )
                            ],
                          ),
                        )),
                    Expanded(
                        flex: 3,
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
                                      color: isActive == false
                                          ? colorGrey
                                          : lightColorScheme.inverseSurface,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              SizedBox(
                                width: size.width,
                                child: Text(
                                  weight,
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
                                  disc != "0" ? initialPrice : price,
                                  style: TextStyle(
                                      color: lightColorScheme.onSurfaceVariant,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              SizedBox(
                                height: 9.h,
                              ),
                              SizedBox(
                                width: size.width,
                                height: 38.h,
                                child: Row(
                                  children: [
                                    Expanded(
                                        flex: 2,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color:
                                                  lightColorScheme.background,
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              border: Border.all(
                                                  width: 1,
                                                  color: colorGrey600)),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                  flex: 1,
                                                  child: InkWell(
                                                    onTap: () async {
                                                      if (isActive == true) {
                                                        controler
                                                            .decrementQty(id);
                                                      } else {
                                                        await EasyLoading.showInfo(
                                                            'Produk tidak berlaku!');
                                                      }
                                                    },
                                                    child: SizedBox(
                                                      child: Icon(
                                                        Icons.remove,
                                                        size: 18,
                                                        color: lightColorScheme
                                                            .inverseSurface,
                                                      ),
                                                    ),
                                                  )),
                                              Expanded(
                                                  flex: 2,
                                                  child: SizedBox(
                                                    width: size.width,
                                                    child: Center(
                                                      child: Text(
                                                        qty.toString(),
                                                        style: TextStyle(
                                                            color: lightColorScheme
                                                                .inverseSurface,
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                    ),
                                                  )),
                                              Expanded(
                                                  flex: 1,
                                                  child: InkWell(
                                                    onTap: () async {
                                                      if (isActive == true) {
                                                        controler
                                                            .incrementQty(id);
                                                      } else {
                                                        await EasyLoading.showInfo(
                                                            'Produk tidak berlaku!');
                                                      }
                                                    },
                                                    child: SizedBox(
                                                      child: Icon(
                                                        Icons.add,
                                                        size: 18,
                                                        color: lightColorScheme
                                                            .inverseSurface,
                                                      ),
                                                    ),
                                                  ))
                                            ],
                                          ),
                                        )),
                                    Expanded(
                                        flex: 1,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              width: 5.w,
                                            ),
                                            InkWell(
                                              onTap: () async {
                                                controler.deleteCart(id);
                                              },
                                              child: SizedBox(
                                                child: Icon(
                                                  Icons.delete_outline_outlined,
                                                  size: 25,
                                                  color: lightColorScheme
                                                      .inverseSurface,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

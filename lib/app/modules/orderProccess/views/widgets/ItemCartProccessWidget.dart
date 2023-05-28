// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../configs/colorSchemes.dart';
import '../../../../../configs/constant.dart';

class ItemCartProccessWidget extends StatelessWidget {
  const ItemCartProccessWidget({
    super.key,
    required this.id,
    required this.size,
    required this.image,
    required this.name,
    required this.weight,
    required this.discount,
    required this.initialPrice,
    required this.price,
    required this.qty,
  });

  final String id;
  final Size size;
  final String image;
  final String name;
  final String weight;
  final String discount;
  final String initialPrice;
  final String price;
  final int qty;

  @override
  Widget build(BuildContext context) {
    RegExp regex = RegExp(r'([.]*0)(?!.*\d)');
    String disc = discount.toString().replaceAll(regex, '');
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPaddin20, vertical: kDefaultPaddin10),
      child: Container(
        width: size.width,
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
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: kDefaultPaddin10,
                            vertical: kDefaultPaddin5),
                        child: Container(
                          width: size.width,
                          height: 110.h,
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
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: kDefaultPaddin5),
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
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        SizedBox(
                          width: size.width,
                          child: Text(
                            "Total : $qty",
                            style: TextStyle(
                                color: lightColorScheme.outline,
                                fontSize: 11,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        SizedBox(
                          width: size.width,
                          child: Text(
                            disc != "0" ? initialPrice : price,
                            style: TextStyle(
                                color: lightColorScheme.onSurfaceVariant,
                                fontSize: 14,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

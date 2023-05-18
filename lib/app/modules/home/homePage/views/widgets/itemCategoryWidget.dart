import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:goocommerce/configs/colorSchemes.dart';

import '../../../../../../configs/constant.dart';
import '../../controllers/home_page_controller.dart';

class ItemCategoryWidget extends StatelessWidget {
  const ItemCategoryWidget({
    super.key,
    required this.size,
    required this.title,
    required this.status,
    required this.icons,
    required this.controller,
  });

  final Size size;
  final String title;
  final bool status;
  final IconData icons;
  final HomePageController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin5),
      child: InkWell(
        onTap: () {
          controller.changeMenu(title);
        },
        child: SizedBox(
          width: 45.w,
          child: Column(
            children: [
              Container(
                width: 45.w,
                height: 45.h,
                decoration: BoxDecoration(
                    color: colorGrey700,
                    borderRadius: BorderRadius.circular(6)),
                child: Icon(
                  icons,
                  size: 25,
                  color: status == true ? colorPrimaryMain : colorGrey100,
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              SizedBox(
                width: size.width,
                child: Center(
                    child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: lightColorScheme.outline),
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

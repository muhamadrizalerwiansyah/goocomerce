import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:goocommerce/configs/colorSchemes.dart';

import '../../../../../../configs/constant.dart';
import '../../controllers/home_page_controller.dart';

class ItemCategoryWidget extends StatelessWidget {
  const ItemCategoryWidget({
    super.key,
    required this.size,
    required this.id,
    required this.title,
    required this.status,
    required this.icons,
    required this.controller,
  });

  final Size size;
  final String id;
  final String title;
  final bool status;
  final IconData icons;
  final HomePageController controller;

  @override
  Widget build(BuildContext context) {
    IconData icon;
    if (title == "All") {
      icon = Icons.dashboard_outlined;
    } else if (title == "RWBL") {
      icon = Icons.attractions_outlined;
    } else if (title == "FMCG") {
      icon = Icons.shopify;
    } else if (title == "SPCS") {
      icon = Icons.yard_outlined;
    } else if (title == "PRSBL") {
      icon = Icons.track_changes;
    } else {
      icon = Icons.warning;
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        onTap: () {
          controller.changeMenu(id);
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
                  icon as IconData?,
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

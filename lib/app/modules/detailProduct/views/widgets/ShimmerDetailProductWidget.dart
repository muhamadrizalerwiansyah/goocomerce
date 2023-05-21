// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../configs/colorSchemes.dart';
import '../../../../../configs/constant.dart';

class ShimmerDetailProductLoad extends StatelessWidget {
  const ShimmerDetailProductLoad({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 650.h,
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(width: 1.0, color: colorGrey400),
      )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(kDefaultPaddin10),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 300.h,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(kDefaultPaddin10),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 10.h,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(kDefaultPaddin10),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 100.h,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(kDefaultPaddin10),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 50.h,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(kDefaultPaddin10),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 20.h,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(kDefaultPaddin10),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 10.h,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

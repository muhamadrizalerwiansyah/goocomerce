import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../configs/colorSchemes.dart';
import '../../../../configs/constant.dart';
import '../../../routes/app_pages.dart';
import '../controllers/on_boarding_controller.dart';

class OnBoardingView extends GetView<OnBoardingController> {
  const OnBoardingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ContainerSliderWidget(
        controller: controller,
      ),
    );
  }
}

class ContainerSliderWidget extends StatefulWidget {
  const ContainerSliderWidget({
    super.key,
    required this.controller,
  });

  final OnBoardingController controller;

  @override
  State<ContainerSliderWidget> createState() => _ContainerSliderWidgetState();
}

class _ContainerSliderWidgetState extends State<ContainerSliderWidget> {
  var currentPage = 0;
  onchanged(int index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 50.h,
          ),
          Expanded(
            flex: 1,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPaddin20),
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: SizedBox(
                          child: Container(
                            width: 100.w,
                            height: 30.h,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/images/logo.png"),
                                    fit: BoxFit.contain)),
                          ),
                        )),
                    Expanded(
                        flex: 3,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            (currentPage ==
                                    (widget.controller.pages.length - 1))
                                ? Container()
                                : InkWell(
                                    onTap: () {
                                      widget.controller.controllerPage
                                          .jumpToPage(2);
                                    },
                                    child: Container(
                                      width: 80.w,
                                      height: 40.h,
                                      decoration: BoxDecoration(
                                          color: colorGrey600,
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: Center(
                                        child: Text(
                                          "skip",
                                          style: TextStyle(
                                              color: lightColorScheme
                                                  .inverseSurface,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 15),
                                        ),
                                      ),
                                    ),
                                  ),
                          ],
                        ))
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 10,
            child: SizedBox(
              height: MediaQuery.of(context).size.height - 500.h,
              child: PageView.builder(
                scrollDirection: Axis.horizontal,
                physics: const NeverScrollableScrollPhysics(),
                onPageChanged: onchanged,
                controller: widget.controller.controllerPage,
                itemCount: widget.controller.pages.length,
                itemBuilder: (context, int index) {
                  return widget.controller.pages[index];
                },
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: SizedBox(
              height: MediaQuery.of(context).size.height - 700.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPaddin20),
                    child: InkWell(
                      onTap: () {
                        if (currentPage ==
                            (widget.controller.pages.length - 1)) {
                          Get.offNamed(Routes.LOGIN);
                        }
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 45.h,
                        width: (currentPage ==
                                (widget.controller.pages.length - 1))
                            ? MediaQuery.of(context).size.width
                            : MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: (currentPage ==
                                    (widget.controller.pages.length - 1))
                                ? colorPrimaryMain
                                : Colors.transparent,
                            borderRadius: BorderRadius.circular(10)),
                        child: (currentPage ==
                                (widget.controller.pages.length - 1))
                            ? const Center(
                                child: Text(
                                  "Gabung Sekarang",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                              )
                            : Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // Container(
                                  //   width: 150.w,
                                  //   height: 50.h,
                                  //   decoration: BoxDecoration(
                                  //       color: Colors.transparent,
                                  //       borderRadius: BorderRadius.circular(10)),
                                  //   child: Center(
                                  //     child: InkWell(
                                  //       onTap: () {
                                  //         widget.controller.controllerPage
                                  //             .jumpToPage(2);
                                  //       },
                                  //       child: Text(
                                  //         "Lewati",
                                  //         style: TextStyle(
                                  //             fontSize: 17,
                                  //             fontWeight: FontWeight.w600,
                                  //             color: colorPrimaryMain),
                                  //       ),
                                  //     ),
                                  //   ),
                                  // ),
                                  SizedBox(
                                    width: 100.w,
                                    height: 50.h,
                                    // color: colorPrimaryMain,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: List<Widget>.generate(
                                          widget.controller.pages.length,
                                          (int index) {
                                        return AnimatedContainer(
                                            duration: const Duration(
                                                milliseconds: 500),
                                            height: 5.h,
                                            width: (index == currentPage)
                                                ? 30.w
                                                : 5.w,
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 3, vertical: 10),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: (index == currentPage)
                                                    ? colorPrimaryMain
                                                    : colorGrey400));
                                      }),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      widget.controller.controllerPage.nextPage(
                                          duration:
                                              const Duration(milliseconds: 500),
                                          curve: Curves.easeInOutQuint);
                                    },
                                    child: Container(
                                      width: 50.w,
                                      height: 50.h,
                                      decoration: BoxDecoration(
                                          color: colorPrimaryMain,
                                          shape: BoxShape.circle),
                                      child: Icon(
                                        Icons.arrow_right_rounded,
                                        size: 30,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),

                                  // InkWell(
                                  //   onTap: () {
                                  //     widget.controller.controllerPage.nextPage(
                                  //         duration: Duration(milliseconds: 500),
                                  //         curve: Curves.easeInOutQuint);
                                  //   },
                                  //   child: AnimatedContainer(
                                  //     alignment: Alignment.center,
                                  //     duration: Duration(milliseconds: 500),
                                  //     height: 70.h,
                                  //     width: (currentPage ==
                                  //             (widget.controller.pages.length - 1))
                                  //         ? 200.w
                                  //         : 75.w,
                                  //     decoration: BoxDecoration(
                                  //         color: Colors.blue,
                                  //         borderRadius: BorderRadius.circular(35)),
                                  // child: (currentPage ==
                                  //         (widget.controller.pages.length - 1))
                                  //         ? Text(
                                  //             "Get Started",
                                  //             style: TextStyle(
                                  //               color: Colors.white,
                                  //               fontSize: 20,
                                  //             ),
                                  //           )
                                  //         : Icon(
                                  //             Icons.navigate_next,
                                  //             size: 50,
                                  //             color: Colors.white,
                                  //           ),
                                  //   ),
                                  // ),
                                ],
                              ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

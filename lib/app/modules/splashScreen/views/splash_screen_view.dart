import 'package:animated_widgets/animated_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:goocommerce/configs/colorSchemes.dart';
import 'package:lottie/lottie.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    controller.launchApp();
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        color: lightColorScheme.background,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TranslationAnimatedWidget.tween(
              translationDisabled: Offset(0, 200),
              translationEnabled: Offset(0, 0),
              child: OpacityAnimatedWidget.tween(
                  opacityDisabled: 0,
                  opacityEnabled: 1,
                  child: SizedBox(
                    width: size.width,
                    height: 50.h,
                    child: Lottie.asset("assets/json/logo.json"),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:goocommerce/app/modules/home/account/views/account_view.dart';
import 'package:goocommerce/app/modules/home/cart/views/cart_view.dart';
import 'package:goocommerce/app/modules/home/homePage/views/home_page_view.dart';
import 'package:goocommerce/app/modules/home/transaction/views/transaction_view.dart';

import '../../../../configs/colorSchemes.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);
  final TextStyle unselectedLabelStyle = TextStyle(
      color: Colors.white.withOpacity(0.5),
      fontWeight: FontWeight.w500,
      fontSize: 12);

  final TextStyle selectedLabelStyle = const TextStyle(
      color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12);

  buildBottomNavigationMenu(context, landingPageController) {
    return Obx(() => Container(
          height: 60.h,
          decoration: const BoxDecoration(
            // color: Colors.transparent,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(24),
              topLeft: Radius.circular(24),
            ),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 195, 195, 195),
                blurRadius: 2,
                offset: Offset(1, 1), // Shadow position
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(24),
              topLeft: Radius.circular(24),
            ),
            child: BottomNavigationBar(
              elevation: 10,
              showUnselectedLabels: true,
              showSelectedLabels: true,
              onTap: landingPageController.changeTabIndex,
              currentIndex: landingPageController.tabIndex.value,
              backgroundColor: lightColorScheme.background,
              unselectedItemColor: colorGrey100,
              selectedItemColor: colorPrimaryMain,
              unselectedLabelStyle: unselectedLabelStyle,
              selectedLabelStyle: selectedLabelStyle,
              items: [
                BottomNavigationBarItem(
                  icon: Container(
                    margin: const EdgeInsets.only(bottom: 2),
                    child: SvgPicture.asset(
                      "assets/svg/ic_banking.svg",
                      width: 25.w,
                      height: 25.h,
                      color: landingPageController.tabIndex.value == 0
                          ? colorPrimaryMain
                          : colorGrey100,
                    ),
                  ),
                  label: 'Home',
                  backgroundColor: lightColorScheme.background,
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    margin: const EdgeInsets.only(bottom: 2),
                    child: SvgPicture.asset(
                      "assets/svg/ic_cart.svg",
                      width: 25.w,
                      height: 25.h,
                      color: landingPageController.tabIndex.value == 1
                          ? colorPrimaryMain
                          : colorGrey100,
                    ),
                  ),
                  label: 'Cart',
                  backgroundColor: lightColorScheme.background,
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    margin: const EdgeInsets.only(bottom: 2),
                    child: SvgPicture.asset(
                      "assets/svg/ic_file.svg",
                      width: 25.w,
                      height: 25.h,
                      color: landingPageController.tabIndex.value == 2
                          ? colorPrimaryMain
                          : colorGrey100,
                    ),
                  ),
                  label: 'Order',
                  backgroundColor: lightColorScheme.background,
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    margin: const EdgeInsets.only(bottom: 2),
                    child: SvgPicture.asset(
                      "assets/svg/ic_user.svg",
                      width: 25.w,
                      height: 25.h,
                      color: landingPageController.tabIndex.value == 3
                          ? colorPrimaryMain
                          : colorGrey100,
                    ),
                  ),
                  label: 'Account',
                  backgroundColor: lightColorScheme.background,
                ),
              ],
            ),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Scaffold(
        bottomNavigationBar: buildBottomNavigationMenu(context, controller),
        body: Obx(() => IndexedStack(
              index: controller.tabIndex.value,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const HomePageView(),
                const CartView(),
                const TransactionView(),
                const AccountView(),
              ],
            )),
      )),
    );
  }
}

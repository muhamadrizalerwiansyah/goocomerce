import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../../configs/colorSchemes.dart';
import '../../../../../configs/constant.dart';
import '../controllers/account_controller.dart';

class AccountView extends GetView<AccountController> {
  const AccountView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: lightColorScheme.background,
        surfaceTintColor: lightColorScheme.background,
        elevation: 0.5,
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(1),
            child: Container(
              color: colorGrey100,
              height: 0.1,
            )),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: lightColorScheme.onSurfaceVariant,
          ),
          onPressed: () => Get.back(),
        ),
        title: Text(
          'Akun',
          style:
              TextStyle(color: lightColorScheme.inverseSurface, fontSize: 17),
        ),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        color: lightColorScheme.background,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(kDefaultPaddin20),
              child: Container(
                width: size.width,
                height: 100.h,
                decoration: BoxDecoration(
                  color: lightColorScheme.background,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromARGB(255, 239, 238, 238),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(0, 1) // Shadow position
                        ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          width: size.width,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image:
                                      AssetImage("assets/images/profil.jpeg"),
                                  fit: BoxFit.cover),
                              shape: BoxShape.circle,
                              color: colorGrey800),
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Expanded(
                          flex: 4,
                          child: SizedBox(
                            width: size.width,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Muhamad Rizal Erwiansyah",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: lightColorScheme.inverseSurface,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  "08238746823",
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: colorGrey100,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  "rizalerwiansyah@gmail.com",
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: colorGrey100,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          )),
                      Expanded(
                          flex: 1,
                          child: InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.edit,
                              size: 25,
                              color: lightColorScheme.inverseSurface,
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin20),
              child: Container(
                width: size.width,
                height: 60.h,
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 0.5, color: colorGrey400))),
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.login,
                          size: 25,
                          color: colorGrey100,
                        )),
                    Expanded(
                        flex: 4,
                        child: InkWell(
                          onTap: () {},
                          child: SizedBox(
                            width: size.width,
                            child: Text(
                              "Keluar Akun",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: lightColorScheme.inverseSurface,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        )),
                    Expanded(flex: 1, child: Container()),
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

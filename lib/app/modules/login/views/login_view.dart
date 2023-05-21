import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:goocommerce/app/routes/app_pages.dart';
import 'package:goocommerce/configs/colorSchemes.dart';
import 'package:goocommerce/configs/constant.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        color: lightColorScheme.background,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: size.width,
                child: Center(
                    child: Text(
                  "Hello Goo!",
                  style: TextStyle(
                      color: lightColorScheme.inverseSurface,
                      fontSize: 25,
                      fontWeight: FontWeight.w900),
                )),
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                width: size.width,
                child: Center(
                    child: Text(
                  "Welcome back you've\nbeen missed!",
                  style: TextStyle(
                      color: lightColorScheme.outline,
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                )),
              ),
              SizedBox(
                height: 50.h,
              ),
              Form(
                  key: controller.loginFormKey,
                  child: Column(
                    children: [
                      Container(
                        width: size.width,
                        height: 50.h,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromARGB(255, 236, 236, 236),
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                  offset: Offset(0, 1) // Shadow position
                                  ),
                            ],
                            borderRadius: BorderRadius.circular(15)),
                        child: TextFormField(
                          validator: controller.emailValidator,
                          controller: controller.emailController,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                            ),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide:
                                    BorderSide(color: lightColorScheme.error)),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide:
                                  BorderSide(color: lightColorScheme.error),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                            ),
                            labelText: 'Email',
                            fillColor: lightColorScheme.background,
                            labelStyle: TextStyle(
                                color: lightColorScheme.outline,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                          onChanged: (text) {},
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        width: size.width,
                        height: 50.h,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                  color: Color.fromARGB(255, 236, 236, 236),
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                  offset: Offset(0, 1) // Shadow position
                                  ),
                            ],
                            borderRadius: BorderRadius.circular(15)),
                        child: Obx(
                          () => TextFormField(
                            validator: controller.passwordValidator,
                            obscureText: controller.isObscure.value,
                            controller: controller.passwordController,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide:
                                    const BorderSide(color: Colors.transparent),
                              ),
                              errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: BorderSide(
                                      color: lightColorScheme.error)),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                borderSide:
                                    BorderSide(color: lightColorScheme.error),
                              ),
                              border: const OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide:
                                    const BorderSide(color: Colors.transparent),
                              ),
                              labelText: 'Password',
                              suffixIcon: IconButton(
                                  icon: Icon(
                                    controller.isObscure.value
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                    color: controller.isObscure.value
                                        ? colorGrey400
                                        : colorGrey100,
                                  ),
                                  onPressed: () {
                                    controller.isObscure.value =
                                        !controller.isObscure.value;
                                  }),
                              labelStyle: TextStyle(
                                  color: lightColorScheme.outline,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            ),
                            onChanged: (text) {},
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 20.h,
                        child: InkWell(
                          onTap: () {
                            // Get.toNamed(Routes.FORGOT_PASSWORD,
                            //     preventDuplicates: false);
                          },
                          child: Text(
                            "Forgot password?",
                            style: TextStyle(
                                fontSize: 12,
                                color: lightColorScheme.outline,
                                fontWeight: FontWeight.w300),
                            textAlign: TextAlign.end,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      // Container(
                      //   width: size.width,
                      //   height: 55.h,
                      //   decoration: BoxDecoration(
                      //       color: colorPrimaryMain,
                      //       boxShadow: const [
                      //         BoxShadow(
                      //             color: Color.fromARGB(255, 177, 237, 184),
                      //             spreadRadius: 1,
                      //             blurRadius: 4,
                      //             offset: Offset(0, 1) // Shadow position
                      //             ),
                      //       ],
                      //       borderRadius: BorderRadius.circular(15)),
                      // )
                      SizedBox(
                        width: size.width,
                        height: 50.h,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ))),
                          child: Text("Sign In"),
                          onPressed: () {
                            controller.login();
                          },
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: 150.h,
              ),
              SizedBox(
                width: size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Not a member? ",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: lightColorScheme.onPrimaryContainer,
                          fontSize: 13),
                    ),
                    InkWell(
                      onTap: () => Get.toNamed(Routes.REGISTER),
                      child: Text(
                        "Register now!",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: colorPrimaryMain,
                            fontSize: 13),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

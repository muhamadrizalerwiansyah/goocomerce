import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:validatorless/validatorless.dart';

import '../../../routes/app_pages.dart';
import '../../../services/authentication_service.dart';
import '../providers/login_provider.dart';

class LoginController extends GetxController {
  final loginFormKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  final emailValidator = Validatorless.multiple([
    Validatorless.required("Email dibutuhkan"),
    Validatorless.email("Format tidak sesuai")
  ]);
  final passwordValidator = Validatorless.required("Password dibutuhkan");

  RxBool isObscure = true.obs;
  final loginProvider = Get.find<LoginProvider>();
  final authService = Get.find<AuthenticationService>();

  void login() async {
    // try {
    await EasyLoading.show(
      status: 'loading...',
      maskType: EasyLoadingMaskType.custom,
    );
    if (loginFormKey.currentState!.validate()) {
      var result = await loginProvider.login(
          emailController.text, passwordController.text);
      if (result != null && result.accessToken != "") {
        await authService.login(result.accessToken, result.refreshToken);
        var user = await authService.getUser();
        if (user?.branchId != null) {
          await FirebaseMessaging.instance.subscribeToTopic(user!.branchId!);
        }
        await EasyLoading.dismiss();
        await Get.offNamed(Routes.HOME);
      } else {
        await EasyLoading.dismiss();
        Get.snackbar('Login', 'Check your email and password');
      }
    }
    // } catch (e) {
    //   await EasyLoading.dismiss();
    //   Get.snackbar('Gagal', "Email atau password salah");
    // }
  }
}

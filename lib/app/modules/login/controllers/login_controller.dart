import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:validatorless/validatorless.dart';

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

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}

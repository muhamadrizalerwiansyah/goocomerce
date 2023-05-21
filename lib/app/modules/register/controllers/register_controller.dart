import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:goocommerce/app/routes/app_pages.dart';

import '../../../data/model/branch.dart';
import '../../../data/model/user.dart';
import '../providers/register_provider.dart';

class RegisterController extends GetxController {
  final registerFormKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  var selectGender = Rxn<Gender>(null);
  var itemBranch = List<Branch>.empty().obs;
  var selectBranch = "".obs;
  final count = 0.obs;
  RxBool isObscure = true.obs;
  final registerProvider = Get.find<RegisterProvider>();

  void changeBrance(String id) {
    selectBranch.value = id;
    update();
  }

  void register() async {
    try {
      await EasyLoading.show(
        status: 'loading...',
        maskType: EasyLoadingMaskType.custom,
      );
      registerProvider
          .register(
              nameController.text,
              emailController.text,
              selectBranch.value,
              passwordController.text,
              selectGender.value!.toStringValue())
          .then((value) async {
        if (value == true) {
          await EasyLoading.showSuccess('Success!');
          Get.offNamed(Routes.LOGIN);
        } else {
          await EasyLoading.showError('Failed!');
        }
      });
    } catch (e) {
      await EasyLoading.showError('Failed!');
    }
  }

  @override
  void onInit() {
    super.onInit();
    registerProvider.getListBranch().then((value) {
      for (var i = 0; i < value.length; i++) {
        itemBranch.add(Branch(
            id: value[i].id,
            countryId: value[i].countryId,
            code: value[i].code,
            name: value[i].name,
            address: value[i].address,
            nameCountry: value[i].nameCountry,
            image: value[i].image));
      }
      update();
    });
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

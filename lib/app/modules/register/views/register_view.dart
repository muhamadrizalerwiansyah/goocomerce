import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:goocommerce/configs/constant.dart';

import '../../../../configs/colorSchemes.dart';
import '../../../data/model/branch.dart';
import '../../../data/model/user.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        color: Colors.white,
        child: Form(
          key: controller.registerFormKey,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(
                  height: 60.h,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPaddin30),
                  child: SizedBox(
                    width: size.width,
                    child: Text(
                      "Create your account!",
                      style: TextStyle(
                          color: lightColorScheme.inverseSurface,
                          fontSize: 20,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPaddin30),
                  child: SizedBox(
                    width: size.width,
                    child: Text(
                      "Get the benefits \nand the fun!",
                      style: TextStyle(
                          color: lightColorScheme.outline,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPaddin30),
                  child: Container(
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
                      // validator: controller.emailValidator,
                      controller: controller.nameController,
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
                          borderSide: BorderSide(color: lightColorScheme.error),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                        ),
                        labelText: 'Name',
                        fillColor: lightColorScheme.background,
                        labelStyle: TextStyle(
                            color: lightColorScheme.outline,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                      onChanged: (text) {},
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPaddin30),
                  child: Container(
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
                      // validator: controller.emailValidator,
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
                          borderSide: BorderSide(color: lightColorScheme.error),
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
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPaddin30),
                  child: Container(
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
                    child: DropdownButtonFormField2<Gender>(
                      value: controller.selectGender.value,
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.zero,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                        ),
                        border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      isExpanded: true,
                      hint: Text(
                        'Gender',
                        style: TextStyle(
                            fontSize: 12, color: lightColorScheme.outline),
                      ),
                      items: const [
                        DropdownMenuItem(
                          value: Gender.male,
                          child: Text(
                            'Male',
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        DropdownMenuItem(
                          value: Gender.female,
                          child: Text(
                            'Famale',
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ],
                      // items: controller.items
                      //     .map((item) => DropdownMenuItem<String>(
                      //           value: item,
                      //           child: Text(
                      //             item,
                      //             style: const TextStyle(
                      //               fontSize: 14,
                      //             ),
                      //           ),
                      //         ))
                      //     .toList(),
                      validator: (value) {
                        if (value == null) {
                          return 'Please select gender.';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        controller.selectGender.value = value;
                        // controller.jenisKelaminController.text =
                        //     value.toString();
                      },
                      // onSaved: (value) {
                      //   controller.selectGender.value =
                      //       value.toString();
                      // },
                      buttonStyleData: const ButtonStyleData(
                        height: 60,
                        padding: EdgeInsets.only(left: 0, right: 10),
                      ),
                      iconStyleData: IconStyleData(
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: colorGrey400,
                        ),
                        iconSize: 25,
                      ),
                      dropdownStyleData: DropdownStyleData(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPaddin30),
                  child: SizedBox(
                    width: size.width,
                    child: Text(
                      "  Branch",
                      style: TextStyle(
                          color: lightColorScheme.inverseSurface,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width,
                  height: 120.h,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 25.w,
                        ),
                        Obx(
                          () => ListView.builder(
                              itemCount: controller.itemBranch.length,
                              scrollDirection: Axis.horizontal,
                              padding: const EdgeInsets.only(top: 0),
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (BuildContext ctxt, int index) {
                                Branch item = controller.itemBranch[index];
                                return Obx(
                                  () => ItemBranchWidget(
                                    size: size,
                                    id: item.id,
                                    status:
                                        controller.selectBranch.value == item.id
                                            ? true
                                            : false,
                                    nameCountry: item.nameCountry!,
                                    nameBranch: item.name,
                                    photo: item.image!,
                                    address: item.address!,
                                    controller: controller,
                                  ),
                                );
                              }),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPaddin30),
                  child: SizedBox(
                    width: size.width,
                    child: Text(
                      "  Select the branch closest to your place",
                      style: TextStyle(
                          color: lightColorScheme.inverseSurface,
                          fontSize: 10,
                          fontWeight: FontWeight.w400),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPaddin30),
                  child: Container(
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
                              borderSide:
                                  BorderSide(color: lightColorScheme.error)),
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
                ),
                SizedBox(
                  height: 30.h,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPaddin30),
                  child: SizedBox(
                    width: size.width,
                    height: 50.h,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ))),
                      child: const Text("Sign Up"),
                      onPressed: () {
                        controller.register();
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ItemBranchWidget extends StatelessWidget {
  const ItemBranchWidget({
    super.key,
    required this.size,
    required this.id,
    required this.status,
    required this.nameCountry,
    required this.nameBranch,
    required this.photo,
    required this.address,
    required this.controller,
  });

  final Size size;
  final String id;
  final bool status;
  final String nameCountry;
  final String nameBranch;
  final String photo;
  final String address;
  final RegisterController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPaddin10, vertical: kDefaultPaddin10),
      child: InkWell(
        onTap: () {
          controller.changeBrance(id);
        },
        child: Container(
          width: 250.w,
          height: 100.h,
          decoration: BoxDecoration(
              color: status == true ? colorPrimaryFaded : Colors.white,
              boxShadow: const [
                BoxShadow(
                    color: Color.fromARGB(255, 236, 236, 236),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(0, 1) // Shadow position
                    ),
              ],
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        Container(
                          width: 25.w,
                          height: 25.h,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "${dotenv.env['URL_IMAGE']}$photo"),
                                  fit: BoxFit.fill),
                              color: colorPrimaryMain,
                              shape: BoxShape.circle),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          nameCountry,
                          style: TextStyle(
                              fontSize: 15,
                              color: lightColorScheme.inverseSurface,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    )),
                SizedBox(
                  height: 10.h,
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      SizedBox(
                          width: size.width,
                          child: Text(
                            nameBranch,
                            style: TextStyle(
                                fontSize: 12,
                                color: lightColorScheme.inverseSurface,
                                fontWeight: FontWeight.w300),
                          )),
                      SizedBox(
                        height: 5.h,
                      ),
                      SizedBox(
                        width: size.width,
                        child: Text(
                          address,
                          style: TextStyle(
                              fontSize: 10,
                              color: lightColorScheme.outline,
                              fontWeight: FontWeight.w300),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

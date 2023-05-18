import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:goocommerce/configs/constant.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../../../configs/colorSchemes.dart';
import '../controllers/detail_product_controller.dart';

class DetailProductView extends GetView<DetailProductController> {
  const DetailProductView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: lightColorScheme.background,
        elevation: 0.1,
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(1),
            child: Container(
              color: colorGrey400,
              height: 0.5,
            )),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: lightColorScheme.onSurfaceVariant,
          ),
          onPressed: () => Get.back(),
        ),
        title: Row(
          children: [
            SizedBox(
              width: 250.w,
              height: 35.h,
            ),
            SizedBox(
              width: 10.w,
            ),
            InkWell(
              onTap: () {},
              child: Icon(
                Icons.shopping_cart_outlined,
                color: lightColorScheme.inverseSurface,
                size: 23,
              ),
            ),
          ],
        ),
      ),
      body: SlidingUpPanel(
          maxHeight: size.height / 11,
          minHeight: size.height / 11,
          body: Container(
            width: size.width,
            height: size.height,
            color: lightColorScheme.background,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: kDefaultPaddin20, vertical: kDefaultPaddin10),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                      width: size.width,
                      height: 300.h,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/goodDrink.jpeg"),
                              fit: BoxFit.fill)),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    SizedBox(
                      width: size.width,
                      child: Text(
                        "FMCG",
                        style: TextStyle(
                            color: colorPrimaryMain,
                            fontSize: 13,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    SizedBox(
                      width: size.width,
                      child: Text(
                        "GOOD DRINK Chocolate - AlMENDRA",
                        style: TextStyle(
                            color: lightColorScheme.inverseSurface,
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    SizedBox(
                      child: Row(
                        children: [
                          const Icon(
                            Icons.star_rounded,
                            size: 15,
                            color: Color.fromARGB(255, 255, 203, 59),
                          ),
                          SizedBox(
                            width: 3.w,
                          ),
                          Text(
                            "100",
                            style: TextStyle(fontSize: 11, color: colorGrey100),
                          ),
                          SizedBox(
                            width: 3.w,
                          ),
                          Text(
                            "|",
                            style: TextStyle(fontSize: 11, color: colorGrey100),
                          ),
                          SizedBox(
                            width: 3.w,
                          ),
                          Text(
                            "300",
                            style: TextStyle(fontSize: 11, color: colorGrey100),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    SizedBox(
                      width: size.width,
                      child: Text(
                        "Description",
                        style: TextStyle(
                            color: lightColorScheme.inverseSurface,
                            fontSize: 13,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    SizedBox(
                      width: size.width,
                      child: Text(
                        "Susu ultra milk rasa coklat (125 ml, 1 karton isi 40 kotak)\n\nUkuran 125 ml\n1 Dus isi 40 Pcs\nRASA COKLAT\n\nExpired dijamin aman (kami selalu perhatikan)\nExpedisi saat ini gunakan Gojek (Same day / Instant)Rincian pengiriman :Pengiriman SAMEDAY sampai jam 14.00 >> maksimal 1 dus (estimasi 6-8 jam setelah mendapatkan driver) Pengiriman INSTAN sampai jam 15.00 >> maksimal 3 dus (estimasi 2-4 jam setelah mendapatkan driver) Hari Minggu dan Hari Besar Toko LIBUR pengiriman\nNOTE : Untuk pengiriman ke GEDUNG,APARTEMEN,MALL, KOS-KOSan, pastikan alamat yang dicantumkan LENGKAP & DETAIL, dan usahakan untuk tidak memesan terlalu banyak (kami mohon pengertiannya terhadap driver)\n\nBerat yang dicantumkan bukanlah berat asli (Harap pengertiannya)\n\nKerusakan produk akibat pengiriman diluar tanggung jawab kami\n\nHarap pengertiannya :\nPastikan alamat dan nomor hp sudah detail dan dapat dihubungi. Jika terjadi hal yang tidak terduga akibat alamat yang tidak detail atau salah , hal ini diluar tanggung jawab kami.\n\nSelamat berbelanja",
                        style: TextStyle(
                            color: colorGrey100,
                            fontSize: 13,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(
                      height: 170.h,
                    ),
                  ],
                ),
              ),
            ),
          ),
          panel: SizedBox(
            width: size.width,
            height: size.height,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: kDefaultPaddin10, horizontal: kDefaultPaddin20),
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Price",
                            style: TextStyle(
                                color: colorGrey100,
                                fontSize: 13,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "\$50",
                            style: TextStyle(
                                color: colorPrimaryMain,
                                fontSize: 17,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 5.h,
                          )
                        ],
                      )),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromARGB(255, 245, 245, 245),
                              spreadRadius: 2,
                              blurRadius: 2,
                              offset: Offset(0, 1) // Shadow position
                              ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Expanded(
                              flex: 2,
                              child: Container(
                                width: size.width,
                                height: size.height,
                                decoration: BoxDecoration(
                                    color: colorPrimaryMain,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(5),
                                        bottomLeft: Radius.circular(5))),
                                child: Icon(
                                  Icons.shopping_cart_outlined,
                                  color: Colors.white,
                                  size: 25,
                                ),
                              )),
                          Expanded(
                              flex: 3,
                              child: Container(
                                width: size.width,
                                height: size.height,
                                decoration: BoxDecoration(
                                    color: colorGrey,
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(5),
                                        bottomRight: Radius.circular(5))),
                                child: Center(
                                    child: Text(
                                  "Buy Now",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                                )),
                              ))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          borderRadius: const BorderRadius.vertical(top: Radius.circular(7))),
    );
  }
}

// ignore_for_file: unnecessary_null_comparison

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import '../../../../data/model/cart.dart';
import '../../../../routes/app_pages.dart';
import '../providers/cart_provider.dart';

class CartController extends GetxController {
  //TODO: Implement CartController

  final count = 0.obs;
  final totalPrice = 0.obs;
  final totalProduct = 0.obs;
  final totalProductPrice = 0.obs;
  RxBool statusCheckAll = false.obs;

  final cartProvider = Get.find<CartProvider>();
  var cartList = List<Cart>.empty().obs;

  void checkedProduct(String id, bool status) async {
    try {
      var data = cartList.firstWhere((element) => element.id == id);
      cartList[cartList.indexWhere((element) => element.id == id)] = Cart(
          id: id,
          userId: data.userId,
          productId: data.productId,
          qty: data.qty,
          status: status == true ? false : true,
          createdAt: data.createdAt,
          deletedAt: data.deletedAt,
          product: data.product);
      var dataCheck =
          cartList.where((element) => element.status == false).toList();
      if (dataCheck.isEmpty) {
        statusCheckAll.value = true;
      } else {
        statusCheckAll.value = false;
      }
      totalPrice.value = 0;
      totalProduct.value = 0;
      totalProductPrice.value = 0;
      for (var i = 0; i < cartList.length; i++) {
        var price = 0;
        var qty = 0;
        if (cartList[i].status == true) {
          price = cartList[i].product.price! * cartList[i].qty;
          qty = cartList[i].qty;
          totalPrice.value = totalPrice.value + price;
          totalProduct.value = totalProduct.value + qty;
          totalProductPrice.value = totalProductPrice.value + price;
        }
      }
      update();
    } catch (e) {
      await EasyLoading.showInfo('Produk tidak berlaku!');
    }
  }

  void decrementQty(String id) async {
    try {
      await EasyLoading.show(
        status: 'loading...',
        maskType: EasyLoadingMaskType.custom,
      );
      var check = cartList.firstWhere((element) => element.id == id);
      if (check.qty > 0) {
        cartProvider.decrementIncrement(id, "decrement").then((value) async {
          if (value == true) {
            var data = cartList.firstWhere((element) => element.id == id);
            cartList[cartList.indexWhere((element) => element.id == id)] = Cart(
                id: id,
                userId: data.userId,
                productId: data.productId,
                qty: data.qty - 1,
                status: data.status,
                createdAt: data.createdAt,
                deletedAt: data.deletedAt,
                product: data.product);
            totalPrice.value = 0;
            totalProduct.value = 0;
            totalProductPrice.value = 0;
            for (var i = 0; i < cartList.length; i++) {
              var price = 0;
              var qty = 0;
              if (cartList[i].status == true) {
                price = cartList[i].product.price! * cartList[i].qty;
                qty = cartList[i].qty;
                totalPrice.value = totalPrice.value + price;
                totalProduct.value = totalProduct.value + qty;
                totalProductPrice.value = totalProductPrice.value + price;
              }
            }
            update();
            await EasyLoading.dismiss();
          } else {
            await EasyLoading.showError('Failed!');
          }
        });
      } else {
        await EasyLoading.showError('Failed!');
      }
    } catch (e) {
      await EasyLoading.showInfo('Produk tidak berlaku!');
    }
  }

  void incrementQty(String id) async {
    try {
      await EasyLoading.show(
        status: 'loading...',
        maskType: EasyLoadingMaskType.custom,
      );
      cartProvider.decrementIncrement(id, "increment").then((value) async {
        if (value == true) {
          var data = cartList.firstWhere((element) => element.id == id);
          cartList[cartList.indexWhere((element) => element.id == id)] = Cart(
              id: id,
              userId: data.userId,
              productId: data.productId,
              qty: data.qty + 1,
              status: data.status,
              createdAt: data.createdAt,
              deletedAt: data.deletedAt,
              product: data.product);
          totalPrice.value = 0;
          totalProduct.value = 0;
          totalProductPrice.value = 0;
          for (var i = 0; i < cartList.length; i++) {
            var price = 0;
            var qty = 0;
            if (cartList[i].status == true) {
              price = cartList[i].product.price! * cartList[i].qty;
              qty = cartList[i].qty;
              totalPrice.value = totalPrice.value + price;
              totalProduct.value = totalProduct.value + qty;
              totalProductPrice.value = totalProductPrice.value + price;
            }
          }
          update();
          await EasyLoading.dismiss();
        } else {
          await EasyLoading.showError('Failed!');
        }
      });
    } catch (e) {
      await EasyLoading.showInfo('Produk tidak berlaku!');
    }
  }

  void deleteCart(String cartId) async {
    await EasyLoading.show(
      status: 'loading...',
      maskType: EasyLoadingMaskType.custom,
    );
    cartProvider.deleteCart(cartId).then((value) async {
      if (value == true) {
        cartList.removeWhere((element) => element.id == cartId);
        await EasyLoading.dismiss();
      } else {
        EasyLoading.showError('Gagal');
      }
    });
  }

  void checkedAllProduct(bool status) {
    try {
      for (var i = 0; i < cartList.length; i++) {
        cartList[cartList
                .indexWhere((element) => element.id == cartList[i].id)] =
            Cart(
                id: cartList[i].id,
                userId: cartList[i].userId,
                productId: cartList[i].productId,
                qty: cartList[i].qty,
                status: status == true ? false : true,
                createdAt: cartList[i].createdAt,
                deletedAt: cartList[i].deletedAt,
                product: cartList[i].product);
      }

      statusCheckAll.value = status == true ? false : true;
      totalPrice.value = 0;
      totalProduct.value = 0;
      totalProductPrice.value = 0;
      for (var i = 0; i < cartList.length; i++) {
        var price = 0;
        var qty = 0;
        if (cartList[i].status == true) {
          price = cartList[i].product.price! * cartList[i].qty;
          qty = cartList[i].qty;
          totalPrice.value = totalPrice.value + price;
          totalProduct.value = totalProduct.value + qty;
          totalProductPrice.value = totalProductPrice.value + price;
        }
      }
      update();
    } catch (e) {
      EasyLoading.showError('Gagal');
    }
  }

  addToCart(String productId) async {
    try {
      await EasyLoading.show(
        status: 'loading...',
        maskType: EasyLoadingMaskType.custom,
      );
      cartProvider.addToCart(productId).then((value) async {
        if (value.id != null) {
          var data = cartList
              .where((element) => element.productId == productId)
              .toList();
          if (data.isNotEmpty) {
            cartList[cartList
                    .indexWhere((element) => element.id == data[0].id)] =
                Cart(
                    id: data[0].id,
                    userId: data[0].userId,
                    productId: data[0].productId,
                    qty: value.qty,
                    status: data[0].status,
                    createdAt: data[0].createdAt,
                    deletedAt: data[0].deletedAt,
                    product: data[0].product);
          } else {
            cartList.add(Cart(
                id: value.id,
                userId: value.userId,
                productId: value.productId,
                qty: value.qty,
                status: false,
                createdAt: value.createdAt,
                deletedAt: value.deletedAt,
                product: value.product));
          }
          update();
        }
      });
      EasyLoading.showSuccess('Success');
    } catch (e) {
      EasyLoading.showError('Failed');
    }
  }

  void checkout() async {
    try {
      await EasyLoading.show(
        status: 'loading...',
        maskType: EasyLoadingMaskType.custom,
      );
      await cartProvider.checkout(cartList).then((value) async {
        if (value != "-") {
          // cartList.removeWhere((element) => element.status == true);
          await EasyLoading.dismiss();
          await Get.toNamed(Routes.ORDER_PROCCESS, arguments: value);
        } else {
          await EasyLoading.showError('Failed!');
        }
      });
    } catch (e) {
      await EasyLoading.showError('Error!');
    }
  }

  @override
  void onInit() {
    super.onInit();
    cartProvider.getCart().then((value) {
      for (var i = 0; i < value.length; i++) {
        cartList.add(Cart(
            id: value[i].id,
            userId: value[i].userId,
            productId: value[i].productId,
            qty: value[i].qty,
            status: false,
            product: value[i].product));
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

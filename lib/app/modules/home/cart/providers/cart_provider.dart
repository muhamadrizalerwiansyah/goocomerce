import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../../../../configs/cache_manager.dart';
import '../../../../data/model/cart.dart';

class CartProvider with CacheManager {
  Dio dio = Dio();
  Future<List<Cart>> getCart() async {
    try {
      final token = await getToken();
      dio.options.headers["authorization"] = 'Bearer $token';
      var response = await dio.get("${dotenv.env['BASE_API']}/cart");
      if (response.statusCode == 200) {
        var result = (response.data["data"] as List)
            .map((x) => Cart.fromJson(x))
            .toList();
        return result;
      } else {
        return [];
      }
    } catch (e) {
      return [];
    }
  }

  Future<Cart> addToCart(String productId) async {
    final token = await getToken();

    dio.options.headers['accept'] = '*/*';
    dio.options.headers["authorization"] = 'Bearer $token';
    var response = await dio.post("${dotenv.env['BASE_API']}/add-cart", data: {
      'product_id': productId,
    });

    return Cart.fromJson(response.data["data"]);
  }

  Future<bool> decrementIncrement(String cartId, String type) async {
    try {
      final token = await getToken();

      dio.options.headers['accept'] = '*/*';
      dio.options.headers["authorization"] = 'Bearer $token';
      var response = await dio
          .post("${dotenv.env['BASE_API']}/decrement-increment-cart", data: {
        'cart_id': cartId,
        'type': type,
      });
      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }

  Future<bool> deleteCart(String productId) async {
    try {
      final token = await getToken();

      dio.options.headers['accept'] = '*/*';
      dio.options.headers["authorization"] = 'Bearer $token';
      var response =
          await dio.get("${dotenv.env['BASE_API']}/delete-cart/$productId");

      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }
}

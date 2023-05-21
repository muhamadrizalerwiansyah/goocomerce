import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';

import '../../../../configs/cache_manager.dart';
import '../../../data/model/product.dart';

class DetailProductProvider with CacheManager {
  Dio dio = Dio();
  Future<Product> getProduct(String id) async {
    // try {
    final token = await getToken();
    dio.options.headers["authorization"] = 'Bearer $token';
    var response =
        await dio.get("${dotenv.env['BASE_API']}/product-detail/$id");
    return Product.fromJson(response.data["data"]);
    // } catch (e) {
    //   return e;
    // }
  }
}

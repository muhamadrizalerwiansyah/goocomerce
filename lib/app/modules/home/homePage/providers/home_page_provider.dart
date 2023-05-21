import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:goocommerce/app/data/model/category_product.dart';

import '../../../../../configs/cache_manager.dart';
import '../../../../../configs/http.dart';
import '../../../../data/model/product.dart';

class HomePageProvider with CacheManager {
  final http = Http();
  Future<List<CategoryProduct>> getCategory() async {
    Dio dio = Dio();
    try {
      final token = await getToken();

      dio.options.headers["authorization"] = 'Bearer $token';
      var response = await dio.get("${dotenv.env['BASE_API']}/category");
      if (response.statusCode == 200) {
        var result = (response.data["data"] as List)
            .map((x) => CategoryProduct.fromJson(x))
            .toList();
        return result;
      } else {
        return [];
      }
    } catch (e) {
      return [];
    }
  }

  Future<List<Product>> getProduct() async {
    Dio dio = Dio();
    try {
      final token = await getToken();
      dio.options.headers["authorization"] = 'Bearer $token';
      var response = await dio.get("${dotenv.env['BASE_API']}/product");
      if (response.statusCode == 200) {
        var result = (response.data["data"] as List)
            .map((x) => Product.fromJson(x))
            .toList();
        return result;
      } else {
        return [];
      }
    } catch (e) {
      return [];
    }
  }
}

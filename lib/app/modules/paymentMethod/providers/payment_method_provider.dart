import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';

import '../../../../configs/cache_manager.dart';
import '../../../data/model/invoice.dart';

class PaymentMethodProvider with CacheManager {
  Dio dio = Dio();
  Future<Invoice> getDetail(String id) async {
    // try {
    final token = await getToken();
    dio.options.headers["authorization"] = 'Bearer $token';
    var response = await dio.get("${dotenv.env['BASE_API']}/order/$id");
    return Invoice.fromJson(response.data["data"]);
    // } catch (e) {
    //   return e;
    // }
  }
}

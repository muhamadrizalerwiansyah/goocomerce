import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../../../../../configs/cache_manager.dart';
import '../../../../data/model/invoice.dart';

class TransactionProvider with CacheManager {
  Dio dio = Dio();
  Future<List<Invoice>> getData() async {
    try {
      final token = await getToken();
      dio.options.headers["authorization"] = 'Bearer $token';
      var response = await dio.get("${dotenv.env['BASE_API']}/list-order");
      if (response.statusCode == 200) {
        var result = (response.data["data"] as List)
            .map((x) => Invoice.fromJson(x))
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

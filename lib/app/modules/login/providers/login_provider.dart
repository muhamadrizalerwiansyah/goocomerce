import 'package:dio/dio.dart';

import '../../../../configs/http.dart';
import '../../../data/model/login_response.dart';

class LoginProvider {
  final http = Http();

  Future<LoginResponse?> login(String email, String password) async {
    try {
      var result = await http.post(
        '/login',
        data: {'email': email, 'password': password},
      );
      return LoginResponse.fromJson(result.data);
    } on DioError catch (e) {
      return null;
    }
  }
}

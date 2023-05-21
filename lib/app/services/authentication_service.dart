import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:goocommerce/app/services/firebase_service.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

import '../../configs/cache_manager.dart';
import '../data/model/login_response.dart';
import '../data/model/user.dart';

class AuthenticationService extends GetxService with CacheManager {
  final isLogged = false.obs;
  final Rxn<User> user = Rxn<User>();

  void logOut() {
    isLogged.value = false;
    removeToken();
  }

  Future<void> login(String token, String refreshToken) async {
    isLogged.value = true;
    final firebaseService = Get.find<FirebaseService>();
    await Future.wait([
      saveToken(token),
      saveRefreshToken(refreshToken),
      firebaseService.resetFcmToken()
    ]);
  }

  Future<User?> getUser() async {
    final token = await getToken();
    if (token != null) {
      var decodedToken = JwtDecoder.decode(token);
      return User.fromJson(decodedToken['data']);
    }

    return null;
  }

  Future<bool> checkLoginStatus() async {
    final token = await getToken();
    if (token != null) {
      isLogged.value = true;
      return true;
    }
    return false;
  }

  Future<AuthenticationService> init() async {
    var statusLogin = await checkLoginStatus();
    if (statusLogin) {
      isLogged.value = true;
      var takeUser = await getUser();
      if (takeUser != null) {
        user.value = takeUser;
      }
    }
    return this;
  }

  Future<bool> reLogin() async {
    try {
      final refreshToken = await getRefreshToken();
      final dio = Dio();

      final response = await dio.post('${dotenv.env['BASE_API']!}/refresh',
          data: {'token': refreshToken});

      var data = LoginResponse.fromJson(response.data);
      if (response.statusCode == 200) {
        await login(data.accessToken, data.refreshToken);
        return true;
      }
      return false;
    } catch (e) {
      e.printError(info: "Failed to refresh token");
      return false;
    }
  }
}

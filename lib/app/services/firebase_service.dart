// ignore_for_file: constant_identifier_names

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

import '../../configs/http.dart';

class FirebaseService extends GetxService {
  final storage = const FlutterSecureStorage();
  final http = Http();

  Future<FirebaseService> init() async {
    return this;
  }

  Future<String> resetFcmToken() async {
    final fcmToken = await FirebaseMessaging.instance.getToken();
    await saveFcmToken(fcmToken!);
    return fcmToken;
  }

  Future<String?> getFcmToken() async {
    try {
      return await storage.read(key: FirebaseKey.token.toString());
    } catch (e) {
      e.printError(info: "failed to get fcm token");
      return null;
    }
  }

  Future<bool> saveFcmToken(String fcmToken) async {
    try {
      await http.post("/messaging/token", data: {'fcm_token': fcmToken});
      await storage.write(key: FirebaseKey.token.toString(), value: fcmToken);
      return true;
    } catch (e) {
      e.printError(info: "failed to save fcm token");
      return false;
    }
  }
}

enum FirebaseKey { token }

// ignore_for_file: constant_identifier_names

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

mixin CacheManager {
  final storage = const FlutterSecureStorage();

  Future<bool> saveToken(String? token) async {
    try {
      await storage.write(key: CacheManagerKey.TOKEN.toString(), value: token);
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<String?> getToken() async {
    try {
      return await storage.read(key: CacheManagerKey.TOKEN.toString());
    } catch (e) {
      return null;
    }
  }

  Future<bool> saveRefreshToken(String? refreshToken) async {
    try {
      await storage.write(
          key: CacheManagerKey.REFRESH_TOKEN.toString(), value: refreshToken);
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<String?> getRefreshToken() async {
    return await storage.read(key: CacheManagerKey.REFRESH_TOKEN.toString());
  }

  removeToken() async {
    await Future.wait([
      storage.delete(key: CacheManagerKey.TOKEN.toString()),
      storage.delete(key: CacheManagerKey.REFRESH_TOKEN.toString())
    ]);
  }
}

enum CacheManagerKey { TOKEN, REFRESH_TOKEN }

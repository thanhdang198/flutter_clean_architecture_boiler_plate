import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class SecureStorage {
  Future<String> readToken(String key);
  Future<dynamic> readAllToken(String key);
  Future<dynamic> deleteToken(String key);
  Future writeToken({required String key, required String value});
  Future deleteAll();
}

class SecureStorageImpl extends SecureStorage {
// Create storage
  final FlutterSecureStorage storage = const FlutterSecureStorage();

  @override
  Future<String> readToken(String key) async {
// Read value
    String? value = await storage.read(key: key);
    return value ?? '';
  }

  @override
  Future<dynamic> readAllToken(String key) async {
// Read value
    Map<String, String> allValues = await storage.readAll();
    return allValues;
  }

  @override
  Future<dynamic> deleteToken(String key) async {
// Delete value
    await storage.delete(key: key);
  }

  @override
  Future writeToken({required String key, required String value}) async {
    await storage.write(key: key, value: value);
  }
// Delete all

  @override
  Future deleteAll() async {
    await storage.deleteAll();
  }

// // Write value
// await storage.write(key: key, value: value);
}

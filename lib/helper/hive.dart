import 'package:hive_flutter/hive_flutter.dart';

abstract class HiveService {
  Future<void> writeData({required String key, required dynamic data});
  Future<dynamic> getData({required String key});
  Future<void> clearData();
}

class HiveServiceImpl implements HiveService {
  late final Box? _box;

  initBox() async {
    _box = await Hive.openBox('gopage-pos');
  }

  @override
  Future<dynamic> writeData(
      {required String key, required dynamic data}) async {
    if (_box == null) await initBox();
    _box?.put(key, data);
    return;
  }

  @override
  Future<dynamic> getData({required String key}) async {
    if (_box == null) await initBox();
    return _box?.get(key) ?? '';
  }

  @override
  clearData() async {
    if (_box == null) await initBox();
    await _box?.clear();
    await _box?.deleteFromDisk();
  }
}

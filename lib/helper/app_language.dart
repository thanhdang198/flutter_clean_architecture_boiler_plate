import 'package:flutter/material.dart';
import 'hive.dart';
import '../core/services_locator.dart';

class AppLanguage extends ChangeNotifier {
  Locale _appLocale = const Locale('vi');
  final HiveService _hiveService = serviceLocator<HiveService>();
  Locale get appLocal => _appLocale;
  fetchLocale() async {
    // if (_hiveService.getData(key: 'language_code')) {
    //   _appLocale = const Locale('vi');
    //   return Null;
    // }
    _appLocale = Locale(await _hiveService.getData(key: 'language_code'));
    return Null;
  }

  void changeLanguage(Locale type) async {
    if (_appLocale == type) {
      return;
    }
    if (type == const Locale("vi")) {
      _appLocale = const Locale("vi");
      await _hiveService.writeData(key: 'language_code', data: 'vi');
      await _hiveService.writeData(key: 'countryCode', data: 'VN');
    } else {
      _appLocale = const Locale("en");
      await _hiveService.writeData(key: 'language_code', data: 'en');
      await _hiveService.writeData(key: 'countryCode', data: 'US');
    }
    notifyListeners();
  }
}

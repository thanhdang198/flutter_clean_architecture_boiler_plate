import 'package:boilerplate_project/core/services/api_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../helper/hive.dart';
import 'constants/constants.dart';
import '../helper/secure_storage.dart';

final GetIt serviceLocator = GetIt.instance;

void setUpService() {
  BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: 60 * 1000, // 60 seconds
      receiveTimeout: 60 * 1000 // 60 seconds
      );

  serviceLocator.registerSingleton<Dio>(Dio(options));
  serviceLocator.registerSingleton<ApiService>(APIServiceImpl());
  serviceLocator.registerSingleton<HiveService>(HiveServiceImpl());
  serviceLocator.registerSingleton<SecureStorage>(SecureStorageImpl());
}

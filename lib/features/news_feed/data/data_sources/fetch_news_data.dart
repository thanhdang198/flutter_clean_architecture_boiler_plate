import 'package:boilerplate_project/core/services/api_service.dart';
import 'package:get_it/get_it.dart';

import '../../../../core/services_locator.dart';

abstract class FetchNewsData {
  Future<List> fetchNews(dynamic data);
}

class FetchNewsDataImpl implements FetchNewsData {
  final ApiService _apiService = serviceLocator<ApiService>();
  @override
  Future<List> fetchNews(data) async {
    return [];
  }
}

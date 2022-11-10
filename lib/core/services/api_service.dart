import 'package:dio/dio.dart';

import '../services_locator.dart';

abstract class ApiService {
  Future<Response> getData(String url, Map<String, dynamic> formData);
}

class APIServiceImpl implements ApiService {
  final Dio _dio = serviceLocator<Dio>();
  @override
  Future<Response> getData(String url, Map<String, dynamic> formData) async {
    final Response response = await _dio.get(url);
    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception(
          'Error when fetch url: $url with status code ${response.statusCode}');
    }
  }
}

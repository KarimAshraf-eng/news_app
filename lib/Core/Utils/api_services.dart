import 'package:dio/dio.dart';

class ApiServices {
  final Dio dio;
  ApiServices({required this.dio});

  Future<Map<String, dynamic>> get(String category) async {
    var response = await dio.get(
        "https://newsapi.org/v2/top-headlines?$category&apiKey=087bff91022148299ac19e60f5fbcb65");
    return response.data;
  }
}

// country=us&category=$category
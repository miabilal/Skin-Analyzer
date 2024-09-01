import 'package:dio/dio.dart';

class SkinAnalyzeApi {
  final Dio _dio = Dio();

  static const String _apiKey =
      '9355a276c7msh51e2c73c9fd6413p1d4436jsn4be91a753d3a';
  static const String _apiHost = 'skin-analyze-advanced.p.rapidapi.com';

  Future<Response> analyzeSkin(String imagePath) async {
    try {
      return await _dio.post(
        'https://$_apiHost/analyze',
        data: FormData.fromMap({
          'image': await MultipartFile.fromFile(imagePath),
        }),
        options: Options(
          headers: {
            'X-RapidAPI-Key': _apiKey,
            'X-RapidAPI-Host': _apiHost,
            'Content-Type': 'multipart/form-data',
          },
        ),
      );
    } catch (e) {
      throw Exception('Failed to analyze skin: $e');
    }
  }
}

import 'package:skin_analyzer/Data/Api/Api.dart';

class SkinAnalyzeRepository {
  final SkinAnalyzeApi api;

  SkinAnalyzeRepository(this.api);

  Future<Map<String, dynamic>> analyzeSkin(String imagePath) async {
    final response = await api.analyzeSkin(imagePath);
    return response.data;
  }
}

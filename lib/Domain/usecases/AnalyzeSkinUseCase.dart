// ignore_for_file: file_names

import 'package:skin_analyzer/Data/Res/SkinAnalyzeRepository.dart';

class AnalyzeSkinUseCase {
  final SkinAnalyzeRepository repository;

  AnalyzeSkinUseCase(this.repository);

  Future<Map<String, dynamic>> call(String imagePath) {
    return repository.analyzeSkin(imagePath);
  }
}

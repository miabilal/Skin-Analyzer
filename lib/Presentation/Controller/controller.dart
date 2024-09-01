import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SkinAnalyzeController extends GetxController {
  var isLoading = false.obs;
  var analysisResult = {}.obs;

  Future<void> analyzeImage(String imagePath) async {
    isLoading.value = true;

    try {
      var request = http.MultipartRequest(
          'POST',
          Uri.parse(
              'https://skin-analyze-advanced.p.rapidapi.com/facebody/analysis/skinanalyze-advanced'));

      request.headers.addAll({
        'X-Rapidapi-Key': '9355a276c7msh51e2c73c9fd6413p1d4436jsn4be91a753d3a',
        'X-Rapidapi-Host': 'skin-analyze-advanced.p.rapidapi.com',
        'Content-Type': 'multipart/form-data'
      });

      request.files.add(await http.MultipartFile.fromPath('image', imagePath));

      var response = await request.send();
      if (response.statusCode == 200) {
        final responseData = await response.stream.bytesToString();
        final result = jsonDecode(responseData) as Map<String, dynamic>;
        analysisResult.value = result;
      } else {
        final responseData = await response.stream.bytesToString();
        print('Error Response: $responseData');
        Get.snackbar('Error',
            'Failed to analyze image. Status code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
      Get.snackbar('Error', 'An unexpected error occurred: $e');
    } finally {
      isLoading.value = false;
    }
  }
}

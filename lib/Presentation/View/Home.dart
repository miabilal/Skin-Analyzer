// ignore_for_file: invalid_use_of_protected_member

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:skin_analyzer/Presentation/Controller/controller.dart';
import 'package:skin_analyzer/Presentation/View/resultview.dart';

class HomeView extends StatelessWidget {
  final SkinAnalyzeController controller = Get.put(SkinAnalyzeController());
  final ImagePicker _imagePicker = ImagePicker();

  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Skin Analyze Pro'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Obx(() {
              if (controller.isLoading.value) {
                return const CircularProgressIndicator();
              } else if (controller.analysisResult.isNotEmpty) {
                return ResultView(
                    result: controller.analysisResult.value
                        as Map<String, dynamic>);
              } else {
                return _buildInitialView();
              }
            }),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _pickImage,
              child: const Text('Select Image'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInitialView() {
    return const Center(
      child: Text('Please select an image to analyze your skin.'),
    );
  }

  Future<void> _pickImage() async {
    final pickedFile =
        await _imagePicker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      controller.analyzeImage(pickedFile.path);
    }
  }
}

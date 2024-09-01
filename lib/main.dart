import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skin_analyzer/Presentation/Controller/controller.dart';
import 'package:skin_analyzer/Presentation/View/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize the SkinAnalyzeController so it's available throughout the app
    Get.put(SkinAnalyzeController());

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Skin Analyze Pro',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeView(), // The initial screen of the app
    );
  }
}

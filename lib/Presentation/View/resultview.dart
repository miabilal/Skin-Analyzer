import 'package:flutter/material.dart';

class ResultView extends StatelessWidget {
  final Map<String, dynamic> result;

  const ResultView({super.key, required this.result});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSectionTitle('Skin Type'),
          _buildDetail('Skin Type', result['skin_type']),
          const SizedBox(height: 16),
          _buildSectionTitle('Wrinkles'),
          _buildDetail('Forehead Lines', result['wrinkles']?['forehead']),
          _buildDetail('Crow\'s Feet', result['wrinkles']?['crows_feet']),
          _buildDetail('Under Eye Lines', result['wrinkles']?['under_eye']),
          _buildDetail(
              'Mouth Corner Lines', result['wrinkles']?['mouth_corner']),
          _buildDetail('Brow Lines', result['wrinkles']?['brow_lines']),
          const SizedBox(height: 16),
          _buildSectionTitle('Acne'),
          _buildDetail('Acne Presence', result['acne']?['presence']),
          _buildDetail('Acne Severity', result['acne']?['severity']),
          _buildDetail('Acne Location', result['acne']?['location']),
          const SizedBox(height: 16),
          _buildSectionTitle('Pores'),
          _buildDetail('Forehead Pores', result['pores']?['forehead']),
          _buildDetail('Left Cheek Pores', result['pores']?['left_cheek']),
          _buildDetail('Right Cheek Pores', result['pores']?['right_cheek']),
          _buildDetail('Chin Pores', result['pores']?['chin']),
          const SizedBox(height: 16),
          _buildSectionTitle('Dark Circles'),
          _buildDetail('Severity', result['dark_circles']?['severity']),
          _buildDetail('Type', result['dark_circles']?['type']),
          _buildDetail('Contour', result['dark_circles']?['contour']),
          const SizedBox(height: 16),
          _buildSectionTitle('Spots'),
          _buildDetail('Spot Presence', result['spots']?['presence']),
          _buildDetail('Spot Location', result['spots']?['location']),
          _buildDetail('Spot Severity', result['spots']?['severity']),
          const SizedBox(height: 16),
          _buildSectionTitle('Skin Sensitivity'),
          _buildDetail(
              'Red Zone Area', result['sensitivity']?['red_zone_area']),
          _buildDetail('Red Zone Severity', result['sensitivity']?['severity']),
          const SizedBox(height: 16),
          _buildSectionTitle('Skin Age'),
          _buildDetail('Estimated Skin Age', result['skin_age']),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }

  Widget _buildDetail(String title, dynamic value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text(
        '$title: ${value ?? 'N/A'}',
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}

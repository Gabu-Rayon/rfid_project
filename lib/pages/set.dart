import 'package:flutter/material.dart';
import 'package:rfid_project/core/theme/app_colors.dart'; // Update the import path if needed

class SetPage extends StatelessWidget {
  const SetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.lightBackground, // White background
      body: Center(
        child: Text(
          'Set Page',
          style: TextStyle(color: AppColors.darkBackground), // Dark text
        ),
      ),
    );
  }
}

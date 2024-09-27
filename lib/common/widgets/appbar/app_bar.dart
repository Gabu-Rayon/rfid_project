import 'package:flutter/material.dart';
import 'package:rfid_project/core/theme/app_colors.dart'; // Update the import path if needed

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final TabController tabController;

  const CustomAppBar({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.darkBackground, // Dark blue background
      title: const Text(
        'Project Title',
        style: TextStyle(color: Colors.white),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.more_vert, color: Colors.white),
          onPressed: () {
            // Handle more options here
          },
        ),
      ],
      bottom: TabBar(
        controller: tabController,
        tabs: const [
          Tab(text: 'Inventory'),
          Tab(text: 'Set'),
          Tab(text: 'Read'),
          Tab(text: 'Write'),
          Tab(text: 'Lock'),
          Tab(text: 'Destroy'),
        ],
        indicatorColor: Colors.white,
        labelColor: Colors.white,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + kTextTabBarHeight);
}

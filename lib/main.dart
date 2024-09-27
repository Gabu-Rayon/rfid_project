import 'package:flutter/material.dart';
import 'package:rfid_project/common/widgets/appbar/app_bar.dart'; // Update the import path if needed
import 'package:rfid_project/core/theme/app_colors.dart'; // Update the import path if needed
import 'package:rfid_project/pages/inventory.dart';
import 'package:rfid_project/pages/set.dart';
import 'package:rfid_project/pages/read.dart';
import 'package:rfid_project/pages/write.dart';
import 'package:rfid_project/pages/lock.dart';
import 'package:rfid_project/pages/destroy.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor:
            AppColors.lightBackground, // White background for pages
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: AppColors.darkBackground),
          bodyMedium: TextStyle(color: AppColors.darkBackground),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(tabController: _tabController),
      body: TabBarView(
        controller: _tabController,
        children: const [
          InventoryPage(),
          SetPage(),
          ReadPage(),
          WritePage(),
          LockPage(),
          DestroyPage(),
        ],
      ),
    );
  }
}

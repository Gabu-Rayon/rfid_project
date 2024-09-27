import 'package:flutter/material.dart';
import 'package:rfid_project/common/widgets/appbar/app_bar.dart'; // Update the import path if needed
import 'package:rfid_project/core/theme/app_colors.dart'; // Update the import path if needed

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
        children: [
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

class InventoryPage extends StatelessWidget {
  const InventoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Inventory Page',
          style: TextStyle(color: AppColors.darkBackground)),
    );
  }
}

class SetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child:
          Text('Set Page', style: TextStyle(color: AppColors.darkBackground)),
    );
  }
}

class ReadPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child:
          Text('Read Page', style: TextStyle(color: AppColors.darkBackground)),
    );
  }
}

class WritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child:
          Text('Write Page', style: TextStyle(color: AppColors.darkBackground)),
    );
  }
}

class LockPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child:
          Text('Lock Page', style: TextStyle(color: AppColors.darkBackground)),
    );
  }
}

class DestroyPage extends StatelessWidget {
  const DestroyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Destroy Page',
          style: TextStyle(color: AppColors.darkBackground)),
    );
  }
}

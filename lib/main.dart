import 'package:flutter/material.dart';

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
        scaffoldBackgroundColor: Colors.blue,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
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
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Project Title'),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.white),
            onPressed: () {
              // Handle more options here
            },
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
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
      ),
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

class InventoryPage extends StatelessWidget {
  const InventoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Inventory Page', style: TextStyle(color: Colors.white)),
    );
  }
}

class SetPage extends StatelessWidget {
  const SetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Set Page', style: TextStyle(color: Colors.white)),
    );
  }
}

class ReadPage extends StatelessWidget {
  const ReadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Read Page', style: TextStyle(color: Colors.white)),
    );
  }
}

class WritePage extends StatelessWidget {
  const WritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Write Page', style: TextStyle(color: Colors.white)),
    );
  }
}

class LockPage extends StatelessWidget {
  const LockPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Lock Page', style: TextStyle(color: Colors.white)),
    );
  }
}

class DestroyPage extends StatelessWidget {
  const DestroyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Destroy Page', style: TextStyle(color: Colors.white)),
    );
  }
}

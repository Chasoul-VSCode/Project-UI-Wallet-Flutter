import 'package:flutter/material.dart';
import 'side_menu.dart';
import 'tab_menu.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ChasoulUIX'),
        backgroundColor: Colors.blueAccent,
      ),
      drawer: const SideMenu(), // Side Menu
      body: const TabMenu(), // Tab Menu
    );
  }
}

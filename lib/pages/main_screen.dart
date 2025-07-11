import 'package:flutter/material.dart';
import 'package:xboxapp/components/bottom_navbar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(33, 33, 33, 1),
      bottomNavigationBar: BottomNavbar(
        currentIndex: null,
        onTap: (int) {},
      ),
    );
  }
}

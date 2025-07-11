import 'package:flutter/material.dart';
import 'package:xboxapp/components/bottom_navbar.dart';
import 'package:xboxapp/pages/game_screen.dart';
import 'package:xboxapp/pages/home_screen.dart';
import 'package:xboxapp/pages/library_screen.dart';
import 'package:xboxapp/pages/search_screen.dart';
import 'package:xboxapp/pages/social_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  static final List<Widget> _pages = [
    HomeScreen(),
    SocialScreen(),
    SearchScreen(),
    LibraryScreen(),
    GameScreen(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(33, 33, 33, 1),
      bottomNavigationBar: BottomNavbar(
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
    );
  }
}

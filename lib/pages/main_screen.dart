import 'package:flutter/material.dart';
import 'package:xboxapp/components/bottom_navbar.dart';
import 'package:xboxapp/pages/games_screen.dart';
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

  final List<Widget> _pages = [
    HomeScreen(),
    SocialScreen(),
    SearchScreen(),
    LibraryScreen(),
    GamesScreen(),
  ];

  void selectPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavbar(
        onTap: selectPage,
      ),
      body: _pages[_selectedIndex],
    );
  }
}

import 'package:flutter/material.dart';

class BottomNavbar extends StatelessWidget {
  final Function(int)? onTap;
  const BottomNavbar({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey.shade800,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: onTap,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt_outlined),
            label: "Social",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            label: "Search",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.book_outlined),
            label: "Library",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.games_outlined),
            label: "Gamepass",
          ),
        ],
      ),
    );
  }
}

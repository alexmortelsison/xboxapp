import 'package:flutter/material.dart';

class BottomNavbar extends StatelessWidget {
  final Function(int)? onTap;
  const BottomNavbar({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 70, 70, 70),
      height: 120,
      child: BottomNavigationBar(
        elevation: 0,
        onTap: onTap,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: const Color.fromARGB(96, 24, 24, 24),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 32),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people, size: 32),
            label: "Social",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, size: 32),
            label: "Serach",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books_outlined, size: 32),
            label: "Social",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.gamepad_outlined, size: 32),
            label: "Social",
          ),
        ],
      ),
    );
  }
}

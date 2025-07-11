import 'package:flutter/material.dart';

class BottomNavbar extends StatelessWidget {
  final int currentIndex;
  final Function(int)? onTap;
  const BottomNavbar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      backgroundColor: const Color.fromARGB(69, 158, 158, 158),
      selectedItemColor: Colors.white,
      selectedLabelStyle: TextStyle(color: Colors.white),
      unselectedItemColor: const Color.fromARGB(255, 158, 158, 158),
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.people,
            color: Colors.grey.shade300,
          ),
          label: "Social",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
            color: Colors.grey.shade300,
          ),
          label: "Search",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.library_books_outlined,
            color: Colors.grey.shade300,
          ),
          label: "Library",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.games_outlined,
            color: Colors.grey.shade300,
          ),
          label: "Games",
        ),
      ],
    );
  }
}

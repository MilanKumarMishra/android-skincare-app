import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onPageSelected;

  const BottomNavBar({super.key, required this.selectedIndex, required this.onPageSelected});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      selectedItemColor: Colors.pinkAccent,
      unselectedItemColor: Colors.grey,
      onTap: onPageSelected,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "Routine"),
        BottomNavigationBarItem(icon: Icon(Icons.people), label: "Streaks"),
      ],
    );
  }
}

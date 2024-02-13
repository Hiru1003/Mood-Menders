import 'package:flutter/material.dart';
// import 'home.dart'; 
// import 'save.dart'; 
// import 'message.dart'; 
import 'diary.dart'; 
// import 'profile.dart'; 

class CustomNavigationBar extends StatefulWidget {
  @override
  _CustomNavigationBarState createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    Diary(),
    Diary(),
    Diary(),
    Diary(),
    Diary(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: const Color.fromARGB(255, 134, 208, 203), // Selected item color
        unselectedItemColor: Colors.grey, // Unselected item color
        backgroundColor: const Color.fromARGB(255, 134, 208, 203), // Background color
        showSelectedLabels: false, // Do not show labels for selected items
        showUnselectedLabels: false, // Do not show labels for unselected items
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: const Color.fromARGB(255, 70, 66, 68)), // Icon color
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.save, color: const Color.fromARGB(255, 70, 66, 68)), // Icon color
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message, color: const Color.fromARGB(255, 70, 66, 68)), // Icon color
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart, color: const Color.fromARGB(255, 70, 66, 68)), // Icon color
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: const Color.fromARGB(255, 70, 66, 68)), // Icon color
            label: '',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
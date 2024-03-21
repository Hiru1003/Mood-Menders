import 'package:flutter/material.dart';
import 'package:app/pages/diary.dart';
import 'package:app/pages/home.dart';
import 'package:app/pages/message.dart';
import 'package:app/pages/profile.dart';
import 'package:app/pages/static.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);
  @override
  _homepagestate createState() => _homepagestate();
}

class _homepagestate extends State<homepage> {
  int _selectedindex = 0;
  void _navigateBottombar(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  final List<Widget> _pages = [
    UserHome(),
    UserDiary(),
    UserMessage(),
    UserStatic(),
    UserProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedindex,
        onTap: _navigateBottombar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.comment), label: 'Diary'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Message'),
          BottomNavigationBarItem(
              icon: Icon(Icons.stacked_bar_chart), label: 'Statics'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

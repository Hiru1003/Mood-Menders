import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:moodmenders/pages/chat.dart';
import 'package:moodmenders/pages/diaryfristpage.dart';
import 'package:moodmenders/pages/homepage.dart';
import 'package:moodmenders/pages/profile.dart';
import 'package:moodmenders/pages/report.dart';

class navpage extends StatefulWidget{
  const navpage ({Key? key}) : super(key: key);

  @override
  State<navpage> createState() => _navpageState();
}

class _navpageState extends State<navpage>{
 

  @override
  int _selectedindex = 0;
  
  static final List<Widget> _NavScreens = <Widget> [

    home_page(),
    diaryfirst_page(),
    chat_page(),
    report_page(),
    profile_page()
  ];

 
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _NavScreens.elementAt(_selectedindex),),
      bottomNavigationBar: Container(
       decoration: const BoxDecoration(
       color: Color.fromARGB(255, 134, 208, 203),
      ),

          child: GNav(
          rippleColor: Colors.grey,
          hoverColor: Colors.grey.shade100,
          padding: EdgeInsets.all(16),
          gap: 4,
          activeColor: Colors.black,
          tabBackgroundColor:  Color.fromARGB(250, 196, 239, 230),
          tabs: const [
            GButton(icon: LineIcons.home, text: 'Home',),
            GButton(icon: LineIcons.book, text: 'Dairy',),
            GButton(icon: Icons.message, text: 'Chat',),
            GButton(icon: LineIcons.barChart, text: 'Report',),
            GButton(icon: LineIcons.smilingFace, text: 'Profile',),
          ],
        
          selectedIndex: _selectedindex,
          onTabChange: (index) {
            setState(() {
              _selectedindex=index;
            },
            );
            },
        ),
        ),
        );
  }

}
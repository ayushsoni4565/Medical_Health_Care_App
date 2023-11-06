import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_health_care_app/message_screen.dart';
import 'package:medical_health_care_app/setting_screen.dart';
import '../home_screen.dart';
import 'package:medical_health_care_app/shedule_screen.dart';

class NavBar extends StatefulWidget {

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selectedIndex = 0;
  final screen = [
    //homescreen
    HomeScren(),
   // message screen
    MessageScreen(),
    //shedule screen
    Shedule_Screen(),
    //setting screen
    Setting_Screen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: screen[selectedIndex],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xFF7165D6),
          unselectedItemColor: Colors.black26,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,

          ),
          currentIndex: selectedIndex,
          onTap: (index){
            setState(() {
              selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.chat_bubble_text_fill),
              label: "Message",
            ),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.calendar),
              label: "Schedule",
            ),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.settings),
              label: "Settings",
            ),
          ],
        ),
      ),

    );
  }
}

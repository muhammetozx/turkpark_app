import 'package:flutter/material.dart';
import 'package:turkpark_app/Screens/BottomNavigationBarScreen/callScreen.dart';
import 'package:turkpark_app/Screens/BottomNavigationBarScreen/homeScreen.dart';
import 'package:turkpark_app/Screens/BottomNavigationBarScreen/messageScreen.dart';
import 'package:turkpark_app/Screens/BottomNavigationBarScreen/profileScreen.dart';


class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  var screenList = [
    HomeScreen(),
    CallScreen(),
    MessageScreen(),
    ProfileScreen(),
  ];
  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList[selectIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          currentIndex: selectIndex,
          onTap: (value) {
            setState(() {
              selectIndex = value;
            });
          },
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey.shade300,
          iconSize: 35,
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          backgroundColor: Color.fromRGBO(48, 213, 200, 1),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.call_outlined),
              label: 'Call',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined),
              label: 'Message',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people_outline_outlined),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}

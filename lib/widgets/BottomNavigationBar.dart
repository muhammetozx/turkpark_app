import 'package:flutter/material.dart';
import 'package:turkpark_app/Consts/deConst.dart';
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
  final scaffoldKey = GlobalKey<ScaffoldState>();
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
      key: scaffoldKey,
      drawer: Drawer(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            bottomRight: Radius.circular(700),
          ),
        ),
        child: ListView(
          children: [
            SizedBox(height: screenHeight / 10),
            ListTile(
              leading: Icon(Icons.home_filled,
                  size: 40, color: Color.fromRGBO(48, 213, 200, 1)),
              title: Text('Home',
                  style: TextStyle(fontSize: 28, color: Colors.grey[500])),
              onTap: () {
                setState(() {
                  selectIndex = 0;
                  scaffoldKey.currentState!.closeDrawer();
                });
              },
            ),
            ListTile(
              leading: Icon(
                Icons.call_outlined,
                size: 40,
                color: Color.fromRGBO(48, 213, 200, 1),
              ),
              title: Text('Call',
                  style: TextStyle(fontSize: 28, color: Colors.grey[500])),
              onTap: () {
                setState(() {
                  selectIndex = 1;
                  scaffoldKey.currentState!.closeDrawer();
                });
              },
            ),
            ListTile(
              leading: Icon(
                Icons.message_outlined,
                size: 40,
                color: Color.fromRGBO(48, 213, 200, 1),
              ),
              title: Text('Message',
                  style: TextStyle(fontSize: 28, color: Colors.grey[500])),
              onTap: () {
                setState(() {
                  selectIndex = 2;
                  scaffoldKey.currentState!.closeDrawer();
                });
              },
            ),
            ListTile(
              leading: Icon(
                Icons.people_outline_outlined,
                size: 40,
                color: Color.fromRGBO(48, 213, 200, 1),
              ),
              title: Text('Profile',
                  style: TextStyle(fontSize: 28, color: Colors.grey[500])),
              onTap: () {
                setState(() {
                  selectIndex = 3;
                  scaffoldKey.currentState!.closeDrawer();
                });
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            if (scaffoldKey.currentState!.isDrawerOpen) {
              scaffoldKey.currentState!.closeDrawer();
              //close drawer, if drawer is open
            } else {
              scaffoldKey.currentState!.openDrawer();
              //open drawer, if drawer is closed
            }
          },
          icon: Icon(Icons.menu, size: 40),
          color:
              selectIndex == 3 ? Colors.white : Color.fromRGBO(48, 213, 200, 1),
        ),
        shadowColor: Colors.transparent,
        backgroundColor:
            selectIndex == 3 ? Color.fromRGBO(48, 213, 200, 1) : Colors.white,
        iconTheme: IconThemeData(
          color:
              selectIndex == 3 ? Colors.white : Color.fromRGBO(48, 213, 200, 1),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: screenWidth / 24),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications, size: 40),
              color: selectIndex == 3
                  ? Colors.white
                  : Color.fromRGBO(48, 213, 200, 1),
            ),
          ),
        ],
      ),
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

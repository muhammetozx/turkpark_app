import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:turkpark_app/Consts/deConst.dart';
import 'package:turkpark_app/Screens/BottomNavigationBarScreen/callScreen.dart';
import 'package:turkpark_app/Screens/BottomNavigationBarScreen/homeScreen.dart';
import 'package:turkpark_app/Screens/BottomNavigationBarScreen/messageScreen.dart';
import 'package:turkpark_app/Screens/BottomNavigationBarScreen/profileScreen.dart';

class HiddenDrawerWidget extends StatefulWidget {
  const HiddenDrawerWidget({super.key});

  @override
  State<HiddenDrawerWidget> createState() => _HiddenDrawerWidgetState();
}

class _HiddenDrawerWidgetState extends State<HiddenDrawerWidget> {
  List<ScreenHiddenDrawer> _pages = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'HomeScreen',
          baseStyle: TextStyle(),
          selectedStyle: TextStyle(),
        ),
        HomeScreen(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'CallScreen',
          baseStyle: TextStyle(),
          selectedStyle: TextStyle(),
        ),
        CallScreen(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'MessageScreen',
          baseStyle: TextStyle(),
          selectedStyle: TextStyle(),
        ),
        MessageScreen(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'ProfileScreen',
          baseStyle: TextStyle(),
          selectedStyle: TextStyle(),
        ),
        ProfileScreen(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Color.fromRGBO(48, 213, 200, 1),
      screens: _pages,
      initPositionSelected: 0,
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:turkpark_app/Screens/forgotPasswordScreen.dart';
import 'package:turkpark_app/Screens/profileEditScreen.dart';
import 'package:turkpark_app/Screens/BottomNavigationBarScreen/profileScreen.dart';
import 'package:turkpark_app/Screens/signInScreen.dart';
import 'package:turkpark_app/Screens/welcomeScreen.dart';
import 'package:turkpark_app/widgets/BottomNavigationBar.dart';

class Routes {
  static Route _route(Widget widget, RouteSettings settings) {
    if (defaultTargetPlatform == TargetPlatform.android) {
      return MaterialPageRoute(
          builder: (context) => widget, settings: settings);
    } else {
      return CupertinoPageRoute(
          builder: (context) => widget, settings: settings);
    }
  }

  static Route? routes(RouteSettings settings) {
    switch (settings.name) {
      case '/WelcomeScreen':
        return _route(WelcomeScreen(), settings);

      case '/SignInScreen':
        return _route(SignInScreen(), settings);

      case '/ForgotPasswordScreen':
        return _route(FortgotPasswordScreen(), settings);

      case '/BottomNavigationBarWidget':
        return _route(BottomNavigationBarWidget(), settings);

      case '/ProfileEditScreen':
        return _route(ProfileEditScreen(), settings);

      case '/ProfileScreen':
        return _route(ProfileScreen(), settings);
    }
  }
}

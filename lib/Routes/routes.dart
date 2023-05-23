import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:turkpark_app/Screens/signInScreen.dart';
import 'package:turkpark_app/Screens/welcomeScreen.dart';

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
    }
  }
}

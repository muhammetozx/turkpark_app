import 'package:flutter/material.dart';
import 'package:turkpark_app/Consts/deConst.dart';
import 'package:turkpark_app/Routes/routes.dart';
import 'package:turkpark_app/Screens/welcomeScreen.dart';
import 'package:turkpark_app/widgets/HiddenDrawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Türkpark',
      theme: ThemeData(),
      home: WelcomeScreen(),
      onGenerateRoute: Routes.routes,
    );
  }
}

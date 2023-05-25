import 'package:flutter/material.dart';
import 'package:turkpark_app/Routes/routes.dart';
import 'package:turkpark_app/Screens/welcomeScreen.dart';

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
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
          iconTheme: IconThemeData(
            color: Color.fromRGBO(48, 213, 200, 1),
            size: 60,
          ),
        ),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
      onGenerateRoute: Routes.routes,
    );
  }
}

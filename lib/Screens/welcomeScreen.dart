import 'package:flutter/material.dart';
import 'package:turkpark_app/Consts/deConst.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  void initState() {
    Future.delayed(const Duration(seconds: 3))
        .then((value) => Navigator.pushNamed(context, '/SignInScreen'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/logoTurkpark.webp')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

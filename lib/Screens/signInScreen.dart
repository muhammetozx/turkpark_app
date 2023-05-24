import 'package:flutter/material.dart';
import 'package:turkpark_app/Consts/deConst.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: screenHeight / 15),
                Container(
                  height: screenHeight / 15,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/logoTurkpark.webp')),
                  ),
                ),
                SizedBox(height: screenHeight / 10),
                Container(
                  height: screenHeight / 1.6,
                  width: screenWidth / 1.1,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          color: Color.fromRGBO(48, 213, 200, 1), width: 2)),
                  child: Column(
                    children: [
                      Container(
                        height: screenHeight / 13,
                        width: screenWidth / 1.1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Color.fromRGBO(48, 213, 200, 1),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(top: 15.0),
                          child: Text(
                            'Giriş Yapın',
                            style: TextStyle(
                                fontSize: 32,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight / 15),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                'E-mail',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            SizedBox(height: screenHeight / 200),
                            TextField(
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                  borderSide: BorderSide(
                                    color: Color.fromRGBO(48, 213, 200, 1),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                  borderSide: BorderSide(
                                    color: Color.fromRGBO(48, 213, 200, 1),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: screenHeight / 20),
                      Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                'Şifre',
                                style: TextStyle(fontSize: 20),
                              ),
                            ),
                            SizedBox(height: screenHeight / 200),
                            TextField(
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                  borderSide: BorderSide(
                                    color: Color.fromRGBO(48, 213, 200, 1),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                  borderSide: BorderSide(
                                    color: Color.fromRGBO(48, 213, 200, 1),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: screenHeight / 15),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(200, 50),
                          backgroundColor: Color.fromRGBO(48, 213, 200, 1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18)),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(
                              context, '/BottomNavigationBarWidget');
                        },
                        child: Text(
                          'GİRİŞ',
                          style: TextStyle(fontSize: 28),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

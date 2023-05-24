import 'dart:math';

import 'package:flutter/material.dart';
import 'package:turkpark_app/Consts/deConst.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(48, 213, 200, 1),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios_new,
                          color: Colors.white, size: 40)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                    height: screenHeight / 1.3,
                    width: screenWidth / 1.1,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            color: Color.fromRGBO(48, 213, 200, 1), width: 2)),
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        children: [
                          Container(
                            height: screenHeight / 18,
                            width: screenWidth / 1.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30.0),
                                bottomLeft: Radius.circular(30.0),
                              ),
                              color: Color.fromRGBO(48, 213, 200, 1),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Şifre Değiştirme',
                                  style: TextStyle(
                                      fontSize: 24,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                                Icon(
                                  Icons.lock_outline,
                                  color: Colors.white,
                                )
                              ],
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
                                    'Mevcut Şifre',
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
                          SizedBox(height: screenHeight / 40),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    'Yeni Şifre',
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
                          SizedBox(height: screenHeight / 40),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Text(
                                    'Yeni Şifre Tekrar',
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
                              showSnackBar(context);
                            },
                            child: Text(
                              'DEĞİŞTİR',
                              style: TextStyle(fontSize: 28),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void showSnackBar(BuildContext context) {
    final snackBar = SnackBar(
      width: screenWidth / 1.7,
      content: Text(
        'Şifreniz Değiştirildi!',
        style: TextStyle(fontSize: 26, color: Colors.black),
        textAlign: TextAlign.center,
      ),
      backgroundColor: Color.fromRGBO(217, 217, 217, 1),
      behavior: SnackBarBehavior.floating,
      shape: StadiumBorder(),
      duration: Duration(milliseconds: 1000),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

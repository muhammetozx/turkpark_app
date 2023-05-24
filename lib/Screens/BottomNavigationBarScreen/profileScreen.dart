import 'dart:math';

import 'package:flutter/material.dart';
import 'package:turkpark_app/Consts/deConst.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: screenHeight / 5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(14.0),
                        bottomRight: Radius.circular(14.0)),
                    color: Color.fromRGBO(48, 213, 200, 1),
                  ),
                ),
                Positioned(
                  bottom: -70,
                  child: Container(
                    width: screenWidth / 2.8,
                    height: screenHeight / 6,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(48, 213, 200, 1),
                      image: DecorationImage(
                        image: AssetImage('assets/images/avatar.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(75.0),
                      border: Border.all(
                        color: Color.fromRGBO(48, 213, 200, 1),
                        width: screenWidth / 200,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight / 10),
            Text(
              'Ad - Soyad',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: screenHeight / 10),
            Container(
              width: screenWidth / 1.5,
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/ProfileEditScreen');
                    },
                    child: Row(
                      children: [
                        Text(
                          'Profili Düzenle',
                          style: TextStyle(fontSize: 24),
                        ),
                        Spacer(),
                        Icon(Icons.edit)
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(300, 50),
                      backgroundColor: Color.fromRGBO(48, 213, 200, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18)),
                    ),
                  ),
                  SizedBox(height: screenHeight / 15),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/ResetPasswordScreen');
                    },
                    child: Row(
                      children: [
                        Text(
                          'Şifreni Değiştir',
                          style: TextStyle(fontSize: 24),
                        ),
                        Spacer(),
                        Icon(Icons.lock_outline)
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(300, 50),
                      backgroundColor: Color.fromRGBO(48, 213, 200, 1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18)),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100, left: 110, right: 110),
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                      'ÇIKIŞ',
                      style: TextStyle(fontSize: 24),
                    ),
                    Spacer(),
                    Icon(Icons.exit_to_app_outlined)
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(200, 50),
                  backgroundColor: Color.fromRGBO(48, 213, 200, 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:turkpark_app/Consts/deConst.dart';

class ProfileEditScreen extends StatefulWidget {
  const ProfileEditScreen({super.key});

  @override
  State<ProfileEditScreen> createState() => _ProfileEditScreenState();
}

class _ProfileEditScreenState extends State<ProfileEditScreen> {
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
                  padding: const EdgeInsets.only(top: 80),
                  child: Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        height: screenHeight / 1.4,
                        width: screenWidth / 1.1,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: Color.fromRGBO(48, 213, 200, 1),
                                width: 2)),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 60, left: 30, right: 30),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Column(
                                  children: [
                                    Text(
                                      'Profilini Düzenle',
                                      style: TextStyle(fontSize: 22),
                                    ),
                                    SizedBox(height: screenHeight / 20),
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Text(
                                        'Ad Soyad',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                    SizedBox(height: screenHeight / 200),
                                    TextField(
                                      decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(18),
                                          borderSide: BorderSide(
                                            color:
                                                Color.fromRGBO(48, 213, 200, 1),
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(18),
                                          borderSide: BorderSide(
                                            color:
                                                Color.fromRGBO(48, 213, 200, 1),
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
                                        'E-mail',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                    SizedBox(height: screenHeight / 200),
                                    TextField(
                                      decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(18),
                                          borderSide: BorderSide(
                                            color:
                                                Color.fromRGBO(48, 213, 200, 1),
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(18),
                                          borderSide: BorderSide(
                                            color:
                                                Color.fromRGBO(48, 213, 200, 1),
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
                                        'Telefon',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ),
                                    SizedBox(height: screenHeight / 200),
                                    TextField(
                                      decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(18),
                                          borderSide: BorderSide(
                                            color:
                                                Color.fromRGBO(48, 213, 200, 1),
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(18),
                                          borderSide: BorderSide(
                                            color:
                                                Color.fromRGBO(48, 213, 200, 1),
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
                                  backgroundColor:
                                      Color.fromRGBO(48, 213, 200, 1),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18)),
                                ),
                                onPressed: () {
                                  showSnackBar(context);
                                },
                                child: Text(
                                  'KAYDET',
                                  style: TextStyle(fontSize: 28),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 550,
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
        'Başarıyla Kaydedildi!',
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

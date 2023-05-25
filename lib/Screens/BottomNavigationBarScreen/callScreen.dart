import 'package:flutter/material.dart';
import 'package:turkpark_app/Consts/deConst.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({super.key});

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Icon(
              Icons.call,
              size: 100,
              color: Color.fromRGBO(48, 213, 200, 1),
            ),
          ),
          Text(
            'Bize Ulaşabilirsiniz!',
            style: TextStyle(fontSize: 30),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              height: screenHeight / 5,
              width: screenWidth / 1.5,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                      color: Color.fromRGBO(48, 213, 200, 1), width: 2)),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(children: [
                  Column(
                    children: [
                      Text(
                        'E-mail',
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        'Turkpark@gmail.com',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight / 50),
                  Column(
                    children: [
                      Text(
                        'Telefon',
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        '0555 666 77 88',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  )
                ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

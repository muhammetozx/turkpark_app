import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HizmetlerScreen extends StatefulWidget {
  const HizmetlerScreen({super.key});

  @override
  State<HizmetlerScreen> createState() => _HizmetlerScreenState();
}

class _HizmetlerScreenState extends State<HizmetlerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Hizmetler')],
        ),
      ),
    );
  }
}

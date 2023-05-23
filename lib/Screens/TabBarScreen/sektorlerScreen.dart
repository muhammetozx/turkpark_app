import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SektorlerScreen extends StatefulWidget {
  const SektorlerScreen({super.key});

  @override
  State<SektorlerScreen> createState() => _SektorlerScreenState();
}

class _SektorlerScreenState extends State<SektorlerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('Sektörler')],
        ),
      ),
    );
  }
}

import 'dart:async';
import 'package:flogo/main.dart';
import 'package:flogo/walkthrough.dart';
import 'package:flutter/material.dart';

class splash2 extends StatefulWidget {
  const splash2({super.key});
  @override
  State<splash2> createState() => _splash2State();
}

class _splash2State extends State<splash2> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Walkthrough()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: 400,
          height: 900,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/image/splash2.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}

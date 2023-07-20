import 'dart:async';

import 'package:flogo/main.dart';
import 'package:flogo/splash_two.dart';
import 'package:flutter/material.dart';

class splash1 extends StatefulWidget {
  const splash1({super.key});

  @override
  State<splash1> createState() => _splash1State();
}

class _splash1State extends State<splash1> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => splash2()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 400,
        height: 900,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image/splash1.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

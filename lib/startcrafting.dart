import 'package:flutter/material.dart';

class startcrafting extends StatefulWidget {
  const startcrafting({super.key});

  @override
  State<startcrafting> createState() => _startcraftingState();
}

class _startcraftingState extends State<startcrafting> {
  List<String> imageurl = [
    'assets/image/default1.png',
    'assets/image/traditional2.png',
    'assets/image/default1.png',
    'assets/image/traditional2.png',
    'assets/image/default1.png'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset(imageurl[index]),
            width: 170,
            height: 160,
          );
        },
      ),
    );
  }
}

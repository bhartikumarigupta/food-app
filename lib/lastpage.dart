import 'package:flutter/material.dart';

class lastpage extends StatelessWidget {
  const lastpage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      child: Image(
          fit: BoxFit.cover, image: AssetImage("assets/image/lastpage.png")),
    );
  }
}

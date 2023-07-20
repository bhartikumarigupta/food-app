import 'package:flutter/material.dart';

class wishlistpage extends StatefulWidget {
  const wishlistpage({super.key});

  @override
  State<wishlistpage> createState() => _wishlistpageState();
}

class _wishlistpageState extends State<wishlistpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "WhishList",
          style: TextStyle(fontSize: 35),
        ),
      ),
    );
  }
}

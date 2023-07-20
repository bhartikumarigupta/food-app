import 'package:flutter/material.dart';

class Copan extends StatelessWidget {
  final List<String> box = ['assets/image/coupan.png'];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: box.length,
        itemBuilder: (BuildContext context, int index) {
          return Image.asset(
            box[index],
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}

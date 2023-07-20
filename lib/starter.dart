import 'package:flutter/material.dart';

class Starter extends StatelessWidget {
  const Starter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> imageUrls = [
      'assets/image/chicken.png',
      'assets/image/mashroom.png',
      'assets/image/vegpaggi.png',
    ];
    List<String> name = ["Grill Chicken", "Mashroom Fry", "Veggie Fry"];

    return SizedBox(
      height: 135,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imageUrls.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    width: 120,
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(width: 0.1),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        imageUrls[index],
                      ),
                    )),
                const SizedBox(height: 8),
                Text("${name[index]}"),
              ],
            ),
          );
        },
      ),
    );
  }
}

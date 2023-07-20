import 'package:flutter/material.dart';

class topcatagory extends StatefulWidget {
  const topcatagory({super.key});

  @override
  State<topcatagory> createState() => _topcatagoryState();
}

class _topcatagoryState extends State<topcatagory> {
  List<String> menuitem = [
    "assets/image/starter.png",
    "assets/image/drink.png",
    "assets/image/rice.png",
    "assets/image/curry.png",
    "assets/image/deserts.png",
  ];
  List<String> name = ['Starter', 'Drink', 'Rice', 'Curry', 'Desert'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  // width: 80,
                  height: 100,
                  child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        menuitem[index],
                      )),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "${name[index]}",
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
/*
text("Top Categories",style:TextStyle(fontWeight:FontWeight.bold,fontSize:20))
 */

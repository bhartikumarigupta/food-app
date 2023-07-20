import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    List<String> menuitem = [
      "Default menu 1",
      "Default menu 2",
      "Default menu 1",
      "Default menu 1",
      "Default menu 1",
    ];

    return Container(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            // Add margin for spacing between items
            width: size.width * 0.6,
            child: Stack(
              children: [
                Positioned(
                  top: 20,
                  left: 50,
                  child: Container(
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 5,
                          spreadRadius: 0,
                          offset: Offset(0, 0),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(15),
                          child: Text("${menuitem[index]}"),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 80),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("3 starters"),
                              Text("3 Main Courses"),
                              Text("3 Desserts"),
                              Text("3 Drinks"),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Icon(Icons.person),
                              SizedBox(
                                width: 5,
                              ),
                              Text("Min 800"),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Text("Start At Rs 777"),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 30,
                  child: Container(
                    height: size.height * 0.13,
                    width: size.width * 0.3,
                    child: Image.asset(
                      'assets/image/plate.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

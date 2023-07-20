import 'package:flutter/material.dart';

class service extends StatefulWidget {
  const service({super.key});

  @override
  State<service> createState() => _serviceState();
}

class _serviceState extends State<service> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        height: size.height * 0.42,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.only(top: 20, left: 10, right: 10),
                decoration: BoxDecoration(
                    color: Color.fromARGB(186, 255, 255, 255),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(color: Colors.black12, offset: Offset(0, 0))
                    ]),
                height: size.height * 0.4,
                width: size.width * 0.9,
                child: Stack(
                  children: [
                    Positioned(
                        child: Container(
                      padding: EdgeInsets.all(15),
                      child: Column(children: [
                        Container(
                          height: size.height * 0.2,
                          width: size.width * 0.85,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image(
                            image: AssetImage("assets/image/serviceImage.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Row(children: [
                            Image(
                              image: AssetImage("assets/image/serviceicon.png"),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Signature",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(211, 139, 0, 245),
                                  fontWeight: FontWeight.bold),
                            )
                          ]),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: size.height * 0.1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image(
                                      image: AssetImage(
                                          "assets/image/sparkles.png")),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text("High Quality Disposable Cutlery")
                                ],
                              ),
                              Row(
                                children: [
                                  Image(
                                      image: AssetImage(
                                          "assets/image/sparkles.png")),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text("Elegant Decorations & Table Settings")
                                ],
                              ),
                              Row(
                                children: [
                                  Image(
                                      image: AssetImage(
                                          "assets/image/sparkles.png")),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text("Served by Waitstaff")
                                ],
                              ),
                              Row(
                                children: [
                                  Image(
                                      image: AssetImage(
                                          "assets/image/sparkles.png")),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Best for Weddings, Corporate Events etc",
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ]),
                    )),
                    Positioned(
                        right: 0,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10))),
                          child: Text(
                            "Recommended",
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                  ],
                ),
              );
            }));
  }
}

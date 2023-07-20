import 'package:dotted_border/dotted_border.dart';
import 'package:flogo/coupan.dart';
import 'package:flogo/lastpage.dart';
import 'package:flogo/maincourse.dart';
import 'package:flogo/menu.dart';
import 'package:flogo/order.dart';
import 'package:flogo/profile.dart';
import 'package:flogo/service.dart';
import 'package:flogo/startcrafting.dart';
import 'package:flogo/starter.dart';
import 'package:flogo/topcatagory.dart';
import 'package:flogo/wishlist.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  bool flag;
  homepage({Key? key, this.flag = false}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int change = 0;
  bool? flag;
  String ProfilePhoto = "";
  @override
  void initState() {
    super.initState();
    flag = widget.flag;
  }

  List pages = [
    HomePage(),
    wishlistpage(),
    Orderpage(),
    profilepage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          onPressed: () {},
          shape: CircleBorder(),
          child: Image(
              alignment: Alignment.center,
              image: AssetImage('assets/image/Logo1.png')),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: Colors.transparent, // Set the color of the BottomAppBar
          height: 80,
          shape: CircularNotchedRectangle(),
          child: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      change = 0;
                    });
                  },
                  child: Column(
                    children: [
                      Icon(
                        change == 0 ? Icons.home_rounded : Icons.home_outlined,
                        color: Colors.black,
                        size: change == 0 ? 30 : 30,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      change = 1;
                    });
                  },
                  child: Column(
                    children: [
                      Icon(
                        change == 1
                            ? Icons.favorite_rounded
                            : Icons.favorite_border_outlined,
                        color: Colors.black,
                        size: change == 1 ? 30 : 30,
                      ),
                      Text(
                        "WishList",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      change = 2;
                    });
                  },
                  child: Column(
                    children: [
                      Icon(
                        change == 2
                            ? Icons.dining_rounded
                            : Icons.dining_outlined,
                        color: Colors.black,
                        size: change == 2 ? 30 : 30,
                      ),
                      Text(
                        "Orders",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      change = 3;
                    });
                  },
                  child: Column(
                    children: [
                      Icon(
                        change == 3
                            ? Icons.account_circle
                            : Icons.account_circle_outlined,
                        color: Colors.black,
                        size: change == 3 ? 30 : 30,
                      ),
                      Text(
                        "Profile",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: pages[change]);
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List myData = [];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            leading: null,
            title: Text(
              "Hi ,Monica",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple),
            )),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Current location",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              color: Colors.grey),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.place_outlined,
                              color: Colors.deepPurple,
                              size: 20,
                            ),
                            Text(
                              "Hydrabad",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(children: [
                      Icon(
                        Icons.play_circle_outlined,
                        color: Colors.deepPurple,
                      ),
                      Text("How it works?")
                    ]),
                  ],
                ),
              ),
              Container(
                height: 200,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.only(left: 20, top: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/image/paneer.png"))),
                      width: size.width * 0.9,
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              margin: EdgeInsets.only(left: 20, top: 20),
                              width: size.width * 0.48,
                              child: Text(
                                "Enjoy your first order, the taste of our delicious food!",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              margin: EdgeInsets.only(left: 20, top: 5),
                              child: DottedBorder(
                                color: Colors.grey,
                                strokeWidth: 2.0,
                                child: Container(
                                  width: 150,
                                  height: 50,
                                  child: Center(
                                    child: Text(
                                      "FIRSTPLATE01",
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(247, 229, 183, 1)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 55,
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: Offset(0, 1))
                      ]),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            height: 55,
                            width: 280,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    hintText: " Search food or events",
                                    hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 18),
                                    border: InputBorder.none),
                              ),
                            )),
                        Icon(Icons.search),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 230, left: 20, top: 20),
                child: Text("Start crafting",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                        fontSize: 20)),
              ),
              startcrafting(),
              Menu(),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 180.0),
                child: Text("Top Categories",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ),
              topcatagory(),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Starters",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "more startes",
                        style:
                            TextStyle(fontSize: 15, color: Colors.deepPurple),
                      )
                    ],
                  ),
                ),
              ),
              Starter(),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Main Course",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "more main course",
                        style:
                            TextStyle(fontSize: 15, color: Colors.deepPurple),
                      )
                    ],
                  ),
                ),
              ),
              maincourse(),
              SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 180.0),
                child: Text("Service",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ),
              service(),
              lastpage(),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Center(
                    child: Text(
                  "Delicious food with professional service !",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30),
                )),
              )
            ],
          ),
        ));
  }
}

import 'package:flogo/main.dart';
import 'package:flogo/onboarding.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';

class onbording4 extends StatefulWidget {
  const onbording4({super.key});

  @override
  State<onbording4> createState() => _onbording4State();
}

class _onbording4State extends State<onbording4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              // ElevatedButton(onPressed: (){}, child: Icon(Icons.arrow_back_ios_rounded))
              Container(
                margin: EdgeInsets.only(top: 40, right: 390),
                alignment: Alignment.topRight,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                  child: Icon(Icons.arrow_back_ios_new_sharp),
                  style: ElevatedButton.styleFrom(elevation: 0),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Text(
                "Just a step away !",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black12,
                      width: 2.0,
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: " Full name*",
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black12,
                      width: 2.0,
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: " Email I'd*",
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 300,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => homepage()));
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.deepPurple),
                    ),
                    child: Center(
                        child: Text(
                      "Let's Start",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ))),
              )
            ],
          ),
        ),
      ),
    );
  }
}

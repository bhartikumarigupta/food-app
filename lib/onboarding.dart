import 'dart:ffi';

import 'package:flogo/authfunction.dart';
import 'package:flogo/homepage.dart';
import 'package:flogo/Signuppage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();
  String email = '';
  String password = '';
  bool login = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formkey,
        child: SingleChildScrollView(
          child: Container(
            width: 400,
            height: 800,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 300,
                  width: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/image/vector4.png"),
                          fit: BoxFit.fill)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/image/Logo.png"),
                      SizedBox(height: 10),
                      Text(
                        "CraftMyPlate",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    "Login or Signup",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade400),
                  ),
                ),
                SizedBox(
                  height: 10,
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
                      child: TextFormField(
                          key: ValueKey('email'),
                          decoration: InputDecoration(
                              hintText: " Email",
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none),
                          validator: (value) {
                            if (value!.isEmpty || value.contains('@')) {
                              return 'please enter your email';
                            } else {
                              return null;
                            }
                          },
                          onChanged: (value) {
                            setState(() {
                              email = value!;
                            });
                          }),
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
                      child: TextFormField(
                          key: ValueKey('password'),
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: "password",
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none),
                          validator: (value) {
                            if (value!.length < 6) {
                              return 'please enter password of minimum 6 length';
                            } else {
                              return null;
                            }
                          },
                          onChanged: (value) {
                            setState(() {
                              password = value!;
                            });
                          }),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                  child: ElevatedButton(
                      onPressed: () async {
                        try {
                          await AuthServices.signinUser(
                              email, password, context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => homepage()));
                        } catch (e) {
                          print(e);
                        }
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.deepPurple),
                      ),
                      child: Center(
                          child: Text(
                        "login",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ))),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.only(right: 10),
                  child: TextButton(
                      onPressed: () async {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => onbording4()));
                      },
                      child: Text(
                        "Don't have an account? Signup",
                        textAlign: TextAlign.end,
                      )),
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 4.0),
                  child: Text(
                    "By continuing you agree to our",
                    style: TextStyle(
                        fontWeight: FontWeight.w400, color: Colors.grey),
                  ),
                )),
                Center(
                    child: Text(
                  "Terms of services privacy policy",
                  style: TextStyle(
                      fontWeight: FontWeight.w400, color: Colors.grey),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

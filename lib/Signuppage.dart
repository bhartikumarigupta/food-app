import 'package:flogo/authfunction.dart';
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
  final _formkey = GlobalKey<FormState>();
  String fullname = '';
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
            child: Column(
              children: [
                login
                    ? Container()
                    :
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
                      child: TextFormField(
                        key: ValueKey('fullname'),
                        decoration: InputDecoration(
                            hintText: " Full name",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'please enter full name';
                          } else {
                            return null;
                          }
                        },
                        onChanged: (value) {
                          setState(() {
                            fullname = value!;
                          });
                        },
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
                      child: TextFormField(
                          key: ValueKey('email'),
                          decoration: InputDecoration(
                              hintText: " Email I'd*",
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
                              hintText: " Password",
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
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ElevatedButton(
                      onPressed: () async {
                        await AuthServices.signupUser(
                            email, password, fullname, context);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => homepage()));
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.deepPurple),
                      ),
                      child: Center(
                          child: Text(
                        "Sign up",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ))),
                ),
                TextButton(
                    onPressed: () async {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: Text(login
                        ? "Don't have an account? Signup"
                        : "Already have an account? Login")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

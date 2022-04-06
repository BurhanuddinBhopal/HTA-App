// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:hta/utils/routes.dart';
import 'package:http/http.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isHiddenPassword = true;

  GlobalKey<FormState> _formkey_ = GlobalKey<FormState>();

  void validate() {
    if (_formkey_.currentState!.validate()) {
      print("Validate");
    } else {
      print("Not Validated");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: _formkey_,
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                SizedBox(
                  height: 165.0,
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.only(top: 20.0, left: 20.0),
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            "Sign in",
                            style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 250.0),
                            child: Icon(
                              Icons.close,
                              color: Colors.white,
                              size: 28.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    color: Color.fromRGBO(62, 13, 59, 1),
                    width: 415.0,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: 40.0, right: 90.0, bottom: 40.0),
                  child: Text(
                    "Hello, Welcome back to HTA",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 260.0, bottom: 10.0),
                  child: Text(
                    "Mobile Number",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      // color: Color(232323),
                    ),
                  ),
                ),
                Container(
                  width: 372.0,
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Mobile Number",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 14.0,
                        ),
                        prefixIcon: Icon(
                          Icons.call_rounded,
                          size: 18.0,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Mobile Number cannot be empty";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(right: 296.0, bottom: 10.0, top: 30.0),
                  child: Text(
                    "Password",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  width: 372.0,
                  child: TextFormField(
                    obscureText: isHiddenPassword,
                    decoration: InputDecoration(
                        hintText: "Enter Password",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 14.0,
                        ),
                        prefixIcon: Icon(
                          Icons.lock,
                          size: 18.0,
                        ),
                        suffixIcon: InkWell(
                          onTap: _togglePasswordView,
                          child: Icon(isHiddenPassword
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        )),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password cannot be empty";
                      } else if (value.length < 6) {
                        return "Password length should be atleast 6";
                      }

                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 240.0, top: 15.0),
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(62, 13, 59, 1),
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 160.0),
                    child: ElevatedButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Color.fromRGBO(62, 13, 59, 1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero),
                          minimumSize: Size(350, 50),
                        ),
                        onPressed: (() {
                          validate();
                          Navigator.pushNamed(context, MyRoutes.homeRoute);
                        }),
                        child: Text("SIGN IN"))),
                Padding(
                  padding: EdgeInsets.only(left: 80.0, top: 10.0, bottom: 30.0),
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        "I don't have an account.",
                        style: TextStyle(
                          fontSize: 12.0,
                        ),
                      ),
                      Text(
                        "Request Access",
                        style: TextStyle(
                          color: Color.fromRGBO(62, 13, 59, 1),
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  "assets/images/TransperantLogo.png",
                  width: 110.0,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _togglePasswordView() {
    if (isHiddenPassword == true) {
      isHiddenPassword = false;
    } else {
      isHiddenPassword = true;
    }
    setState(() {});
  }
}

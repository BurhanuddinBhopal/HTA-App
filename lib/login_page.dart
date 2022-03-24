// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            SizedBox(
              height: 140.0,
              child: Container(
                child: Padding(
                    padding: EdgeInsets.only(top: 70.0, left: 20.0),
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    )),
                color: Color.fromARGB(255, 128, 15, 39),
                width: 415.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 40.0, right: 90.0, bottom: 40.0),
              child: Text(
                "Hello, Welcome back to HTA",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 260.0, bottom: 10.0),
              child: Text(
                "Mobile Number",
                style: TextStyle(),
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
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 296.0, bottom: 10.0, top: 50.0),
              child: Text(
                "Password",
                style: TextStyle(),
              ),
            ),
            Container(
              width: 372.0,
              child: TextFormField(
                obscureText: true,
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
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 300.0),
                child:
                    ElevatedButton(onPressed: (() {}), child: Text("SIGN IN")))
          ],
        ),
      ),
    );
  }
}

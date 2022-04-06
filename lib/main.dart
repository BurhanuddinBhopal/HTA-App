// @dart=2.9
import 'package:flutter/material.dart';
import 'package:hta/pages/AddCustomer_page.dart';

import 'package:hta/pages/home_page.dart';
import 'package:hta/pages/login_page.dart';
import 'package:hta/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.red),
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.AddCustomerRoute: (context) => AddCustomerPage(),
      },
    );
  }
}

// ignore_for_file: prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class AddCustomerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Form(
        child: Column(children: [
          SizedBox(
            child: Container(
              color: Color.fromRGBO(62, 13, 59, 1),
              height: 97.0,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 50.0),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 18.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 105.0, top: 50.0),
                    child: Text(
                      "Add Customer",
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            child: Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Select from PhoneBook"),
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromRGBO(62, 13, 59, 1),
                  shape:
                      RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                  minimumSize: Size(250, 40),
                ),
              ),
            ),
          ),
          SizedBox(
            child: Padding(
              padding: EdgeInsets.only(left: 12.0, right: 12.0, top: 12.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Organization Name",
                    contentPadding: EdgeInsets.only(left: 10.0),
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.0,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    )),
              ),
            ),
          ),
          SizedBox(
            child: Padding(
              padding: EdgeInsets.only(left: 12.0, right: 12.0, top: 12.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Name",
                    contentPadding: EdgeInsets.only(left: 10.0),
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.0,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    )),
              ),
            ),
          ),
          SizedBox(
            child: Padding(
              padding: EdgeInsets.only(left: 12.0, right: 12.0, top: 12.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Last Name",
                    contentPadding: EdgeInsets.only(left: 10.0),
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.0,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    )),
              ),
            ),
          ),
          SizedBox(
            child: Padding(
              padding: EdgeInsets.only(left: 12.0, right: 12.0, top: 12.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Phone Number",
                    contentPadding: EdgeInsets.only(left: 10.0),
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.0,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    )),
              ),
            ),
          ),
          SizedBox(
            child: Padding(
              padding: EdgeInsets.only(left: 12.0, right: 12.0, top: 12.0),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Address",
                    contentPadding: EdgeInsets.only(left: 10.0),
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.0,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    )),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 368.4),
            child: SizedBox(
              child: Container(
                color: Color.fromRGBO(62, 13, 59, 1),
                height: 70.0,
                width: 420.0,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Save"),
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromRGBO(62, 13, 59, 1),
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

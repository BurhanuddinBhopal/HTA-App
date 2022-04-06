// ignore_for_file: prefer_const_constructors
// @dart=2.9
import 'package:flutter/material.dart';
import 'package:hta/Contacts/catalog.dart';
import 'package:hta/utils/routes.dart';
import 'package:hta/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(10, (index) => CatalogModel.items[0]);
    return Scaffold(
      backgroundColor: Color.fromRGBO(62, 13, 59, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(62, 13, 59, 1),
        actions: [
          IconButton(onPressed: (() {}), icon: Icon(Icons.notifications_none))
        ],
      ),
      body: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          }),
      drawer: Drawer(),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 18.0),
        child: Container(
          width: 220.0,
          height: 42.0,
          child: FloatingActionButton.extended(
            onPressed: () {
              Navigator.pushNamed(context, MyRoutes.AddCustomerRoute);
            },
            icon: Icon(Icons.person_add),
            label: Text("Add Customer"),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12.0))),
            backgroundColor: Colors.blue,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

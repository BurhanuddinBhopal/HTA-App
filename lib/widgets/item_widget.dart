import 'package:flutter/material.dart';
import 'package:hta/Contacts/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Contacts item;

  const ItemWidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Center(
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                child: ListTile(
                  title: Text(
                    item.id,
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  subtitle: Text(item.name),
                  trailing: Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Text(
                      item.mobile.toString(),
                      style: TextStyle(),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

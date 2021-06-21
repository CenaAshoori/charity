import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(Icons.list_alt_outlined),
                  SizedBox(
                    width: 10,
                  ),
                  Text("All Tasks"),
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(Icons.add_circle_outline),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Create Task"),
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(Icons.person_add_outlined),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Register Benefactor"),
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(Icons.home_work_outlined),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Register Charity"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

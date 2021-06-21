import 'package:charity_desktop/views/drawer.dart';
import 'package:charity_desktop/views/login.dart';
import 'package:flutter/material.dart';

import 'all_task_view.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var condition = MediaQuery.of(context).size.width > 700;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(Icons.login),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginView()),
                );
              })
        ],
        title: Text(widget.title),
      ),
      drawer: condition ? null : Drawer(child: MyDrawer()),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            condition
                ? Container(
                    width: (MediaQuery.of(context).size.width * .3),
                    child: Drawer(child: MyDrawer()))
                : Container(),
            Flexible(child: AllTaskView())
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
        },
        tooltip: 'Reload',
        child: Icon(Icons.refresh),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

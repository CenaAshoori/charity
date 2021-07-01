import 'package:charity_desktop/bloc/bloc/navigator_bloc.dart';
import 'package:charity_desktop/views/all_task_view.dart';
import 'package:charity_desktop/views/drawer.dart';
import 'package:charity_desktop/views/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = "All Task";
  @override
  Widget build(BuildContext context) {
    var responsive_condition = MediaQuery.of(context).size.width > 700;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(Icons.login),
              onPressed: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginView()),
                );
                setState(() {});
              })
        ],
        title: Text(title),
      ),
      drawer: responsive_condition ? null : Drawer(child: MyDrawer()),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            responsive_condition
                ? Container(
                    width: (MediaQuery.of(context).size.width * .3),
                    child: Drawer(child: MyDrawer()))
                : Container(),
            Flexible(child: BlocBuilder<NavigatorBloc, AppState>(
              builder: (context, state) {
                switch (state) {
                  case AppState.LogIn:
                    return LoginView();
                  case AppState.AllTask:
                    return AllTaskView();
                    break;
                  case AppState.LogOut:
                    return LoginView();
                  case AppState.SignUp:
                    return LoginView();
                }
              },
            ))
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

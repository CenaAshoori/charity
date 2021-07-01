import 'package:charity_desktop/views/all_task_view.dart';
import 'package:charity_desktop/views/bloc_view.dart';
import 'package:charity_desktop/views/drawer.dart';
import 'package:charity_desktop/views/login.dart';
import 'package:charity_desktop/views/my_home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Charity Management System',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: MyHomePage(title: 'All Task'),
      routes: {
        '/': (context) => BlocView(),
        '/login': (context) => LoginView(),
        '/benefactor': (context) => LoginView(),
        '/allTask': (context) => AllTaskView(),
      },
      initialRoute: '/',
    );
  }
}

import 'package:charity_desktop/bloc/bloc/navigator_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          DrawerButton(
            title: "All Task",
            icon: Icons.list_alt_rounded,
            event: AppEvent.AllTask,
          ),
          DrawerButton(
            title: "Create Task",
            icon: Icons.add_circle_outline,
            event: AppEvent.CreateTask,
          ),
          DrawerButton(
            title: "Register Benefactor",
            icon: Icons.person_add_outlined,
            event: AppEvent.CreateBenefactor,
          ),
          DrawerButton(
            title: "Register Charity",
            icon: Icons.home_work_outlined,
            event: AppEvent.CreateBenefactor,
          ),
          DrawerButton(
            title: "Log In",
            icon: Icons.login,
            event: AppEvent.LogIn,
          ),
        ],
      ),
    );
  }
}

class DrawerButton extends StatelessWidget {
  DrawerButton({this.event, this.icon, this.title, this.key}) : super(key: key);

  AppEvent event;
  IconData icon;
  String title;
  Key key;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(event);
        BlocProvider.of<NavigatorBloc>(context).add(event);
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Icon(icon),
              SizedBox(
                width: 10,
              ),
              Text(title),
            ],
          ),
        ),
      ),
    );
  }
}

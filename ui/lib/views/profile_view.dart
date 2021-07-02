import 'package:charity_desktop/utility/shared_preferences.dart';
import 'package:charity_desktop/views/login.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key key}) : super(key: key);

  @override
  _ProfileViewState createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder(
        future: get_login_token(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            if (snapshot.data != "") {
              return Column(
                children: [],
              );
            } else {
              return LoginView();
            }
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
}

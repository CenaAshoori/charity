import 'package:charity_desktop/bloc/bloc/navigator_bloc.dart';
import 'package:charity_desktop/views/my_home_page.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocView extends StatelessWidget {
  const BlocView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BlocProvider<NavigatorBloc>(
        create: (context) => NavigatorBloc(),
        child: MyHomePage(),
      ),
    );
  }
}

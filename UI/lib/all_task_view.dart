import 'package:charity_desktop/network/get_all_task.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AllTaskView extends StatefulWidget {
  @override
  _AllTaskViewState createState() => _AllTaskViewState();
}

class _AllTaskViewState extends State<AllTaskView> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: FutureBuilder(
            future: get_all_tasks(),
            builder: (context, AsyncSnapshot<List> snapshot) {
              if (snapshot.hasData) {
                List<Widget> widgets = snapshot.data.map((e) => Container(
                      child: Row(
                        children: [Text(e['title'])],
                      ),
                    )) as List;
                return Center(
                  child: Column(
                    children: widgets,
                  ),
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            }));
  }
}

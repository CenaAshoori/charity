import 'package:charity_desktop/models/Task.dart';
import 'package:charity_desktop/network/api.dart';
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
            builder: (context, AsyncSnapshot<List<Task>> snapshot) {
              if (snapshot.hasData) {
                List<Widget> widgets = snapshot.data.map<Widget>((task) {
                  return Card(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(task.title),
                              Text(task.description)
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                }).toList();

                return Center(
                  child: Column(
                    children: widgets,
                  ),
                );
              } else if (snapshot.hasError) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.signal_wifi_off_sharp),
                    Text("Chek your connection and than try again"),
                    Container(
                      width: 100,
                      height: 50,
                      child: Card(
                        child: TextButton(
                            onPressed: () => setState(() => {}),
                            child: Text("Try again")),
                      ),
                    )
                  ],
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            }));
  }
}

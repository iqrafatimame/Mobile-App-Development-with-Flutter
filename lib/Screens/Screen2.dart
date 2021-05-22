import 'package:flutter/material.dart';
import 'package:flutter_drawer/Custom%20Widgets/MyDrawer.dart';
import 'package:flutter_drawer/Screens/ShowRecords.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        title: Text("Mobile App Development"),
        backgroundColor: Colors.brown,
      ),
        drawer: MyDrawer(context1: context),
        body: ShowRecords(),
      ),
     );
  }
}
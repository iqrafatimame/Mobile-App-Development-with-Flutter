import 'package:flutter/material.dart';
import 'package:flutter_drawer/MyDrawer.dart';
import 'package:flutter_drawer/ShowRecords.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        title: Text("MY Home Page"),
        backgroundColor: Colors.brown,
      ),
        drawer: MyDrawer(),
        body: ShowRecords(),
      ),
     );
  }
}
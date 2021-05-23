import 'package:flutter/material.dart';
import 'package:flutter_drawer/Screens/ShowRecords.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.white, //change your color here
          ),
            title: Text("Records"),
            backgroundColor: Colors.brown,
          ),
      
      body: ShowRecords(),
    );
  }
}

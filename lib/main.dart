import 'package:flutter/material.dart';
import 'package:flutter_drawer/AddRecors.dart';
import 'package:flutter_drawer/MyDrawer.dart';
import 'package:flutter_drawer/Screen2.dart';
//import 'package:flutter_drawer/ShowRecords.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/Screen2': (context) => Screen2(),
      },
      home: Scaffold(
        appBar: AppBar(
        title: Text("MY Home Page"),
        backgroundColor: Colors.brown,
      ),
        drawer: MyDrawer(),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: AddRecords(),
    );
  }
}

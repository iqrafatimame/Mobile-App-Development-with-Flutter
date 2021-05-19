import 'package:flutter/material.dart';
import 'package:flutter_drawer/Custom%20Widgets/MyDrawer.dart';
import 'package:flutter_drawer/Screens/AddRecors.dart';
import 'package:flutter_drawer/Screens/Screen2.dart';
import 'package:flutter_drawer/Screens/SetProfile.dart';
import 'package:flutter_drawer/Custom%20Widgets/aesthetic.dart';

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
        '/Aesthetic': (context) => Aesthetic(),
        '/setProfile': (context) => SetProfile(),
        '/Screen2': (context) => Screen2(),
        '/AddRecords': (context) => AddRecords(),
      },
      home: Scaffold(
        appBar: AppBar(
        title: Text("Mobile App Development"),
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
      body: Container( 
        child: Center(
          child: Container(
            child: Image(
              height: 600,
              width: 600,
              image: NetworkImage(
                'https://media.giphy.com/media/bcKmIWkUMCjVm/giphy.gif'
                ),
              ),
          ),
        ),
      ),
    );
  }
}

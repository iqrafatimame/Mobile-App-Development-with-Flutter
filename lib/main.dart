import 'package:flutter/material.dart';
import 'package:flutter_drawer/Custom%20Widgets/MyDrawer.dart';
import 'package:flutter_drawer/Screens/AddRecors.dart';
import 'package:flutter_drawer/Screens/RegisterScreen.dart';
import 'package:flutter_drawer/Screens/Screen2.dart';
import 'package:flutter_drawer/Screens/SetProfile.dart';
import 'package:flutter_drawer/Custom%20Widgets/aesthetic.dart';
import 'package:flutter_drawer/Screens/SuccessfullyRegistered.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(scaffoldBackgroundColor: Colors.white),
      initialRoute: '/',
      routes: {
        '/Aesthetic': (context) => Aesthetic(),
        '/setProfile': (context) => SetProfile(),
        '/SuccessfullyRegistered': (context) => SuccessfullyRegistered(),
        '/Screen2': (context) => Screen2(),
        '/AddRecords': (context) => AddRecords(),
        '/RegistrationForm' : (context) => RegisterForm(),
        
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

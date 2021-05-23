
import 'package:flutter/material.dart';
import 'package:flutter_drawer/Custom%20Widgets/ImageProfile.dart';

class SetProfile extends StatefulWidget {
  @override
  _SetProfileState createState() => _SetProfileState();
}

class _SetProfileState extends State<SetProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.white, //change your color here
          ),
            title: Text("Set Profile Image"),
            backgroundColor: Colors.brown,
          ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.orange[100],
          padding: EdgeInsets.all(20),
          child: Card(
              elevation: 8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ImageProfile(),
                  SizedBox(height: 40),
                ],
              )),
        ),
      );
  }
}
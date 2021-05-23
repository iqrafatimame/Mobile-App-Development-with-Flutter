import 'package:flutter/material.dart';

class SuccessfullyRegistered extends StatefulWidget {
  @override
  _SuccessfullyRegisteredState createState() => _SuccessfullyRegisteredState();
}

class _SuccessfullyRegisteredState extends State<SuccessfullyRegistered> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        title: Text("Successfully Registered"),
        backgroundColor: Colors.brown,
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          elevation: 8,
          child: Padding(
            padding: const EdgeInsets.all(100.0),
            child: Text("You have succesfully Registered!"),
          ),
        ),
      ),
    );
  }
}

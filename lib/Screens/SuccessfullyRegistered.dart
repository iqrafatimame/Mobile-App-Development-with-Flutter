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
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Ink.image(
                  image: NetworkImage('https://media.giphy.com/media/l4HodBpDmoMA5p9bG/giphy.gif'),
                  height: 350,
                  width: 300,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 20,),
              Text("You have succesfully Registered!",
              style: TextStyle(fontSize: 20),),
            ],
          ),
        ),
      ),
    );
  }
}

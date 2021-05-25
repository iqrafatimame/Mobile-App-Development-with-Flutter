import 'dart:async';
import 'dart:convert';
import 'dart:ui';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;

final TextEditingController _controllerFirstName = TextEditingController();
final TextEditingController _controllerLastName = TextEditingController();
final TextEditingController _controllerEmail = TextEditingController();
final TextEditingController _controllerGender = TextEditingController();
final TextEditingController _controllerPhone = TextEditingController();

class AddRecords extends StatefulWidget {
  AddRecords({Key key}) : super(key: key);
  @override
  _AddRecordsState createState() => _AddRecordsState();
}

class _AddRecordsState extends State<AddRecords> {
  
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
        body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: new BoxDecoration(
          shape: BoxShape.rectangle,
          image: new DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
                'https://images.unsplash.com/photo-1569154107747-fb00e3b3430d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80'),
          )),
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
        child: Container(
          //height: MediaQuery.of(context).size.height/2,
          child: frostedContainer(
            Stack(
          children:<Widget>[
              Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 12),
                child: SingleChildScrollView(
                     child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: _controllerFirstName,
                          decoration: InputDecoration(
                            hintText: 'Enter First Name',
                            hintStyle: TextStyle(color: Colors.white),
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue[300], width: 32.0),
                             ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: _controllerLastName,
                          decoration: InputDecoration(hintText: 'Enter Last Name',
                            hintStyle: TextStyle(color: Colors.white),
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue[300], width: 32.0),
                             ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: _controllerGender,
                          decoration: InputDecoration(hintText: 'Enter Gender', 
                            hintStyle: TextStyle(color: Colors.white),
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue[300], width: 32.0),
                             ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: _controllerEmail,
                          decoration: InputDecoration(hintText: 'Enter Email', 
                            hintStyle: TextStyle(color: Colors.white),
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue[300], width: 32.0),
                             ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: _controllerPhone,
                          decoration:
                              InputDecoration(hintText: 'Enter Phone Number', 
                            hintStyle: TextStyle(color: Colors.white),
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue[300], width: 32.0),
                             ),
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.brown, // background
                            onPrimary: Colors.white, // foreground
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 30),
                            child: Text('Add Provider'),
                          ),
                          onPressed: () {
                            providerRegistrations(context);
                          }),
                    ],
                  ),
                ),
              ),
            ),
          ],
          ),
          ),
        ),
          ),
      );
  }
Widget frostedContainer(Widget child) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(15),
    child: BackdropFilter( 
      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
      child: Container( 
        color: Colors.orange.withOpacity(0.1),
        child: child,
      ),
    ),
  );
}
 
}

Future providerRegistrations(context) async {
// variables for controllers

  String firstName = _controllerFirstName.text;
  String lastName = _controllerLastName.text;
  String email = _controllerEmail.text;
  String gender = _controllerGender.text;
  String phone = _controllerPhone.text;

  // store all data with param names
  var data = {
    'firstName': firstName,
    'lastName': lastName,
    'email': email,
    'gender': gender,
    'phone': phone,
  };
  print(data);
  var url = 'https://pcc.edu.pk/ws/create/hms_providers.php';

// starting web api call
  var response = await http.post(Uri.parse(url), body: json.encode(data));

  var message = jsonDecode(response.body);
  if (response.statusCode == 200) {
    print(message);
  } else {
    print("not added");
  }

  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Response Message'),
          content: Text(message['message']),
          actions: <Widget>[
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: new Text("OK")),
          ],
        );
      });

  _controllerFirstName.text = "";
  _controllerLastName.text = "";
  _controllerGender.text = "";
  _controllerEmail.text = "";
  _controllerPhone.text = "";
}

import 'dart:async';
import 'dart:convert';
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
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.orange[100],
          padding: EdgeInsets.all(20),
          child: Card(
              elevation: 8,
              child: Padding(
                padding: const EdgeInsets.all(40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextField(
                      controller: _controllerFirstName,
                      decoration: InputDecoration(hintText: 'Enter First Name'),
                    ),
                    TextField(
                      controller: _controllerLastName,
                      decoration: InputDecoration(hintText: 'Enter Last Name'),
                    ),
                    TextField(
                      controller: _controllerGender,
                      decoration: InputDecoration(hintText: 'Enter Gender'),
                    ),
                    TextField(
                      controller: _controllerEmail,
                      decoration: InputDecoration(hintText: 'Enter Email'),
                    ),
                    TextField(
                      controller: _controllerPhone,
                      decoration:
                          InputDecoration(hintText: 'Enter Phone Number'),
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
              )),
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

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_drawer/Screens/SuccessfullyRegistered.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        title: Text("Register User"),
        backgroundColor: Colors.brown,
      ),
      body: ConstrainedBox(
        constraints: const BoxConstraints.expand(),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: new BoxDecoration(
              shape: BoxShape.rectangle,
              image: new DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1569154107747-fb00e3b3430d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80'),
              )),
          alignment: Alignment.center,
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(0),
              child:
                frostedContainer(
                  Stack(
                    children: <Widget> [ 
                      Container(
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                        Text(
                          'Register',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 25.0,
                          ),
                        ),
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Text(
                            'SignUp to experience new ways',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                        ),
                         ),
                        SizedBox(height: 25),
                        SignUp(),
                ],
              ),
                      ),
                    ),
                    ],
                  ),
                ),
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
        color: Colors.brown.withOpacity(0.1),
        child: child,
      ),
    ),
  );
}

}


class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  // Text that contain @ as well as the email domain
  bool isValidEmail(String value) {
    final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return emailRegExp.hasMatch(value);
  }

  // Text that contains 11 numbers starting from 0
  bool isValidNumber(String value) {
    final phoneRegExp = RegExp(r"^\+?0[0-9]{10}$");
    return phoneRegExp.hasMatch(value);
  }

  // Text that contain combination of upper case, lowercase,
  // digits and special charatcters
  bool isValidPassword(String value) {
    final passwordRegExp = new RegExp(r'^[0-9a-zA-Z]{5,}');
    return passwordRegExp.hasMatch(value);
  }

  // Text that contains
  bool isValidName(String value) {
    final nameRegExp = new RegExp(r'^[a-zA-Z]*$');
    return nameRegExp.hasMatch(value);
  }

  bool isNotNull(String value) {
    if (value.isEmpty) {
      return false;
    } else {
      return true;
    }
  }

  final _formKey = GlobalKey<FormState>();
  bool checkboxValue = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                style: TextStyle(fontSize: 14.0, color: Colors.white),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black26)),
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  prefixIcon: Icon(Icons.account_box, color: Colors.white,),
                  hintText: "User Name",
                  hintStyle: TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.blue[300], width: 32.0),
                      borderRadius: BorderRadius.circular(5.0)),
                ),
                validator: (value) {
                  if (isValidName(value) && isNotNull(value)) {
                    return null;
                  }
                  return "Please enter user name";
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                style: TextStyle(fontSize: 14.0),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black26)),
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  prefixIcon: Icon(Icons.email, color: Colors.white,),
                  hintText: "Email Id",
                  hintStyle: TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.blue[300], width: 32.0),
                      borderRadius: BorderRadius.circular(5.0)),
                ),
                validator: (value) {
                  if (isValidEmail(value) && isNotNull(value)) {
                    return null;
                  }
                  return "Please enter a valid email id";
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                style: TextStyle(fontSize: 14.0),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black26)),
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  prefixIcon: Icon(Icons.phone, color: Colors.white,),
                  hintText: "Mobile No",
                  hintStyle: TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.blue[300], width: 32.0),
                      borderRadius: BorderRadius.circular(5.0)),
                ),
                validator: (value) {
                  if (isValidNumber(value) && isNotNull(value)) {
                    return null;
                  }
                  return "Please Enter Some valid number";
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
                style: TextStyle(fontSize: 14.0),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black26)),
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  prefixIcon: Icon(Icons.lock, color: Colors.white,),
                  hintText: "Password",
                  hintStyle: TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 32.0),
                      borderRadius: BorderRadius.circular(5.0)),
                ),
                validator: (value) {
                  if (isValidPassword(value) && isNotNull(value)) {
                    return null;
                  }
                  return "Please Valid password";
                }),
          ),
          // +++++ CHECKBOX ++++++
          FormField<bool>(
            builder: (state) {
              return Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Checkbox(
                        
                        activeColor: Colors.white,
                          value: checkboxValue,
                          onChanged: (value) {
                            setState(() {
                              checkboxValue = value;
                              state.didChange(value);
                            });
                          }),
                      Text(
                        'I accept all the terms & conditions',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Text(
                    state.errorText ?? '',
                    style: TextStyle(
                      color: Theme.of(context).errorColor,
                    ),
                  )
                ],
              );
            },
            validator: (value) {
              if (!checkboxValue) {
                return 'Required';
              } else {
                return null;
              }
            },
          ),

          //++++++ REGISTER BUTTON ++++++
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) =>
                                new SuccessfullyRegistered()));
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text('Register'),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


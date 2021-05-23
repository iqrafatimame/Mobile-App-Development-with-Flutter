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
        body: Container(
          color: Colors.orange[100],
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Card(
              elevation: 8,
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                      ),
                    ),
                    Text(
                      'SignUp to experience new ways',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18.0,
                      ),
                    ),
                    SizedBox(height: 25),
                    SignUp(),
                  ],
                ),
              ),
            ),
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
    if (value.length > 5) {
      return true;
    } else {
      return false;
    }
  }

  // Text that contains
  bool isValidName(String value) {
    final nameRegExp = new RegExp('[a-zA-Z]');
    return nameRegExp.hasMatch(value);
  }

  bool isNotNull(String value) {
    return value != null;
  }

  final _formKey = GlobalKey<FormState>();
  bool _checked = false;
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                  style: TextStyle(fontSize: 18.0),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    prefixIcon: Icon(Icons.account_box),
                    hintText: "User Name",
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
                  style: TextStyle(fontSize: 18.0),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    prefixIcon: Icon(Icons.email),
                    hintText: "Email Id",
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
                  style: TextStyle(fontSize: 18.0),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    prefixIcon: Icon(Icons.phone),
                    hintText: "Mobile No",
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
                  style: TextStyle(fontSize: 18.0),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    prefixIcon: Icon(Icons.lock),
                    hintText: "Password",
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
            CheckboxListTile(
              title: Text(
                "I accept the Terms Terms & Conditions",
                style: const TextStyle(
                  color: Colors.grey,
                  decoration: TextDecoration.none,
                ),
              ),
              controlAffinity: ListTileControlAffinity.trailing,
              value: _checked,
              onChanged: (value) {
                setState(() {
                  _checked = value;
                });
              },
              subtitle: !_checked
                  ? Text(
                      'Required.',
                      style: TextStyle(color: Colors.red),
                    )
                  : null,
            ),

            //++++++ REGISTER BUTTON ++++++
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState.validate() && _checked) {
                      //ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      //  content: Text('Processing Data'),
                      //)
                      Navigator.push(context, 
                      new MaterialPageRoute(
                        builder: (context) => new SuccessfullyRegistered()
                        )
                      );
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Register'),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}

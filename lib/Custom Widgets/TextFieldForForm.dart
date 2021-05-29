import 'package:flutter/material.dart';

class  TextFieldWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child : Padding(
        padding: const EdgeInsets.all(20.0),
        child: TextField(    
          decoration: InputDecoration(
            hintText: 'Enter First Name',
            hintStyle: TextStyle(color: Colors.black),
            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue[300], width: 32.0),
              ),
          ),
        ),
      ),
    );
  }
}
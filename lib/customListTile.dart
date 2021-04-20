import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String titleString;
  final Icon icon;
  CustomListTile({this.titleString, this.icon});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(titleString),
    );
  }
}

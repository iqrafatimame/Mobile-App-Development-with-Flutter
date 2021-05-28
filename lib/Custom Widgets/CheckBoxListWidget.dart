import 'package:flutter/material.dart';

class CheckBoxListWidget extends StatefulWidget {
  final String stringText;

  CheckBoxListWidget({this.stringText});
  @override
  _CheckBoxListWidgetState createState() => _CheckBoxListWidgetState();
}

class _CheckBoxListWidgetState extends State<CheckBoxListWidget> {
  var _checked = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: CheckboxListTile(
        title: Text(widget.stringText),
        controlAffinity: ListTileControlAffinity.trailing,
        value: _checked,
        onChanged: (value) {
          setState(() {
            _checked = value;
          });
        },
      ),
    );
  }
}

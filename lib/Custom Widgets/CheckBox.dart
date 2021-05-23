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
        title: Text(widget.stringText,
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
    );
  }
}

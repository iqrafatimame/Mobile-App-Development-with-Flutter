import 'package:flutter/material.dart';

class DateAndTimePickerWidget extends StatefulWidget {
  @override
  _DateAndTimePickerWidgetState createState() =>
      _DateAndTimePickerWidgetState();
}

class _DateAndTimePickerWidgetState extends State<DateAndTimePickerWidget> {
  DateTime selectedDate = DateTime.now();
  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2019, 1),
        lastDate: DateTime(2111));
    if (picked != null)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text("${selectedDate.toLocal()}"),
          SizedBox(height: 20,),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.brown),
            onPressed: () => _selectDate(context),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text('Select date'),
            ),
          ),
        ],
      ),
    );
  }
}

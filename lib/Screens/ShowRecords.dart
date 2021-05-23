import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Data {
  final String firstName;
  final String lastName;
  final String gender;
  final String email;
  final String phone;

  Data(
      {@required this.firstName,
      @required this.lastName,
      @required this.gender,
      @required this.email,
      @required this.phone});

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      firstName: json['firstName'],
      lastName: json['lastName'],
      gender: json['gender'],
      email: json['email'],
      phone: json['phone'],
    );
  }
}

Future<List<Data>> fetchData() async {
  final response =
      await http.get(Uri.parse('https://pcc.edu.pk/ws/list/hms_providers.php'));
  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => new Data.fromJson(data)).toList();
  } else {
    throw Exception('unexpected eroor');
  }
}

class ShowRecords extends StatefulWidget {
  ShowRecords({Key key}) : super(key: key);
  @override
  _ShowRecordsState createState() => _ShowRecordsState();
}

class _ShowRecordsState extends State<ShowRecords> {

  Future<List<Data>> futureData;
  
  @override
  void initState() {
    super.initState();
    futureData = fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Container(
        child: FutureBuilder<List<Data>>(
          future: futureData,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<Data> data = snapshot.data;
              return ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return DataTable(
                      headingRowHeight: 0,
                      
                      columns: [
                      DataColumn(label: Text('')),
                      DataColumn(label: Text('')),
                      DataColumn(label: Text('')),
                      DataColumn(label: Text('')),
                      DataColumn(label: Text('')),
                    ], rows: [
                      DataRow(
                        cells: [
                        DataCell(Text(data[index + 1].firstName)),
                        DataCell(Text(data[index + 1].lastName)),
                        DataCell(Text(data[index + 1].gender)),
                        DataCell(Text(data[index + 1].email)),
                        DataCell(Text(data[index + 1].phone)),
                      ])
                    ]);
                  });
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

enum BestTutorSite { rubyGranger, hollyGabriel }

class RadioWidget extends StatefulWidget {
  @override
  _RadioWidgetState createState() => _RadioWidgetState();
}

class _RadioWidgetState extends State<RadioWidget> {
  BestTutorSite _site = BestTutorSite.rubyGranger;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: ListTile(
        title: const Text('Holly Gabriel'),
        leading: Radio(
          value: BestTutorSite.hollyGabriel,
          groupValue: _site,
          onChanged: (BestTutorSite value) {
            setState(() {
              _site = value;
            });
          },
        ),
      ),
    );
  }
}

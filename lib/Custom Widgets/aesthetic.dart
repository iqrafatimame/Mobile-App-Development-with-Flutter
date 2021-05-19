import 'package:flutter/material.dart';
import 'package:flutter_drawer/Custom%20Widgets/CustomCard.dart';
import 'package:flutter_drawer/Custom%20Widgets/MyDrawer.dart';

class Aesthetic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
          home: Scaffold(
            appBar: AppBar(
              title: Text("Mobile App Development"),
              backgroundColor: Colors.brown,
            ),
          drawer: MyDrawer(),
          body: Center(
        child: new SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Card(
                margin: const EdgeInsets.all(30),
                elevation: 10.0,
                child: Padding(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "Aesthetic",
                        style: TextStyle(
                          fontSize: 70,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      SizedBox(height: 30),
                      Text(
                          "Aesthetic is the measure or appreciation of beauty. "),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  PictureCard(
                      url:
                          'https://media.giphy.com/media/Id5boIMCwXxbnduKcT/giphy.gif'),
                  PictureCard(
                      url:
                          'https://media.giphy.com/media/gFPxNhzEWdFCCRAqf0/giphy.gif'),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  PictureCard(
                      url:
                          'https://media.giphy.com/media/9pffrT1fatfOg/giphy.gif'),
                  PictureCard(
                      url:
                          'https://media.giphy.com/media/WRRL1EKo9rNe12S4zh/giphy.gif'),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  PictureCard(
                      url:
                          'https://media.giphy.com/media/f6752RiiRYI6Tb1ODm/giphy.gif'),
                  PictureCard(
                      url:
                          'https://media.giphy.com/media/JQG2vMjZrbZ9hMrkZ5/giphy.gif'),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  PictureCard(
                      url:
                          'https://media.giphy.com/media/Ku2Sh2XKrCYeI/giphy.gif'),
                  PictureCard(
                      url:
                          'https://media.giphy.com/media/tDdqCDneNvC0s6LdYg/giphy.gif'),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  PictureCard(
                      url:
                          'https://media.giphy.com/media/3o6vXYz8QGLxQ6Umbu/giphy.gif'),
                  PictureCard(
                      url:
                          'https://media.giphy.com/media/srpPpyxtltdAmbaNsa/giphy.gif'),
                ],
              ),
              SizedBox(height: 30),
              Container(
                margin: EdgeInsets.all(25),
                child: TextButton.icon(
                  label: Text('Load More'),
                  icon: Icon(Icons.next_plan_rounded),
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Alert'),
                          content: Text('No more images to load.'),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('Close'))
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      ),
    );
  }
}

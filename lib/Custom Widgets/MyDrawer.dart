import 'package:flutter/material.dart';
import 'dart:ui';

class MyDrawer extends StatelessWidget {
  BuildContext context1;
  MyDrawer({this.context1});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: 
          Stack(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(20),
                    color: Colors.brown,
                    child: Center(
                      child: SingleChildScrollView(
                           child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        'https://avatars.githubusercontent.com/u/46266421?v=4'),
                                    fit: BoxFit.fill,
                                  )),
                            ),
                            SizedBox(height: 12),
                            Text(
                              'Iqra Fatima',
                              style: TextStyle(color: Colors.white, fontSize: 22),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'iqrafatimame@gmail.com',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            SizedBox(height: 10),
                          ],
                        ),
                      ),
                    ),
                  ),
                 
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: 
                      ListTile(
                        leading: Icon(
                          Icons.select_all
                        ),
                        title: Text(
                          'Tabs For Selection'
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/TabsForSelection');
                        },
                      ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: 
                      ListTile(
                        leading: Icon(
                          Icons.radio_button_checked_rounded),
                        title: Text(
                          'Tabs for Buttons'
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/TabsForButtons');
                        },
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: 
                      ListTile(
                        leading: Icon(
                          Icons.slideshow
                        ),
                        title: Text(
                          'Image Slider',
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/ScreenSlider');
                        },
                      ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: 
                      ListTile(
                        leading: Icon(
                          Icons.album
                        ),
                        title: Text(
                          'Aesthetic FIeld'
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/Aesthetic');
                        },
                      ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: 
                      ListTile(
                        leading: Icon(
                          Icons.add
                        ),
                        title: Text(
                          'Add Records'
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/AddRecords');
                        },
                      ),
                  ),
                   
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: 
                      ListTile(
                        leading: Icon(
                          Icons.account_box
                        ),
                        title: Text(
                          'Registration Form'
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/RegistrationForm');
                        },
                      ),
                    ),
                ],
              ),
            ],
      ),
    );
  }
}

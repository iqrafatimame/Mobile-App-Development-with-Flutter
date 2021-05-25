import 'package:flutter/material.dart';
import 'dart:ui';

class MyDrawer extends StatelessWidget {
  BuildContext context1;
  MyDrawer({this.context1});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: new BoxDecoration(
            shape: BoxShape.rectangle,
            image: new DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1569154107747-fb00e3b3430d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=387&q=80'),
            )),
        child: frostedContainer(
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                        leading: Icon(
                          Icons.home,
                          color: Colors.white,
                        ),
                        title: Text(
                          'Home',
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/');
                        },
                      ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: 
                      ListTile(
                        leading: Icon(
                          Icons.table_chart,
                          color: Colors.white,
                        ),
                        title: Text(
                          'Show Records',
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/Screen2');
                        },
                      ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: 
                      ListTile(
                        leading: Icon(
                          Icons.image,
                          color: Colors.white,
                        ),
                        title: Text(
                          'Set Profile Image',
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/setProfile');
                        },
                      ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: 
                      ListTile(
                        leading: Icon(
                          Icons.album,
                          color: Colors.white,
                        ),
                        title: Text(
                          'Aesthetic FIeld',
                          style: TextStyle(color: Colors.white),
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
                          Icons.add,
                          color: Colors.white,
                        ),
                        title: Text(
                          'Add Records',
                          style: TextStyle(color: Colors.white),
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
                          Icons.account_box,
                          color: Colors.white,
                        ),
                        title: Text(
                          'Registration Form',
                          style: TextStyle(
                            color: Colors.white,
                          ),
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
        ),
      ),
    );
  }

  Widget frostedContainer(Widget child, ) {
    
    //frostedContainer({this.c ,this.child});
    return ClipRRect(
      //borderRadius: BorderRadius.circular(15),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          color: Colors.black.withOpacity(0.1),
          child: child,
        ),
      ),
    );
  }
}

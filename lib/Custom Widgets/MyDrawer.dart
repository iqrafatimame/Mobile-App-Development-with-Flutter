import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  BuildContext context1;
  MyDrawer({this.context1});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
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
          ListTile(
            leading: Icon(
              Icons.home,
            ),
            title: Text('Home',
              style: TextStyle(color: Colors.black
                ),
               ),
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
          ),
          ListTile(
            leading: Icon(
              Icons.table_chart,
            ),
            title: Text('Show Records',
              style: TextStyle(color: Colors.black
                ),
               ),
              onTap: () {
                Navigator.pushNamed(context, '/Screen2');
              },
          ),
          ListTile(
            leading: Icon(Icons.image),
            title: Text('Set Profile Image',
              style: TextStyle(color: Colors.black
                ),
               ),
              onTap: () {
                Navigator.pushNamed(context, '/setProfile');
              },
          ),
          ListTile(
            leading: Icon(
              Icons.album,
            ),
            title:Text('Aesthetic FIeld',
              style: TextStyle(color: Colors.black
                ),
               ),
              onTap: () {
                Navigator.pushNamed(context, '/Aesthetic');
              },
          ),
          ListTile(
            leading: Icon(
              Icons.add,
            ),
            title: Text('Add Records',
              style: TextStyle(color: Colors.black
               ),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/AddRecords');
              },
          ),
          ListTile(
            leading: Icon(
              Icons.account_box,
            ),
            title: Text('Registration Form',
                style: TextStyle(color: Colors.black,
                  ),
                 ),
              onTap: () {
                Navigator.pushNamed(context, '/RegistrationForm');
              },
            ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
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
              Icons.table_chart,
              color: Colors.red,
            ),
            title: TextButton(
              child: Text('Show Records'),
              onPressed: () {
                Navigator.pushNamed(context, '/Screen2');
              },
            ),
          ),

          ListTile(
            leading: Icon(
              Icons.add,
              color: Colors.red,
            ),
            title: TextButton(
              child: Text('Add Records'),
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
            ),
          ),
        ],
      ),
    );
  }
}

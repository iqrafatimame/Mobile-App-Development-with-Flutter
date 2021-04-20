

import 'package:flutter/material.dart';
import 'package:flutter_drawer/customListTile.dart';
import 'package:flutter_drawer/CustomCard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MY Home Page"),
        backgroundColor: Colors.brown,
      ),
      drawer: Drawer(
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
                Icons.message,
                color: Colors.red,
              ),
              title: Text('Todays'),
            ),
            Divider(color: Colors.grey),

            // Custom List Tile Widgets
            CustomListTile(
              titleString: 'Images',
              icon: Icon(Icons.image),
            ),
            CustomListTile(
              icon: Icon(Icons.mood),
              titleString: 'Moodboard',
            ),
            CustomListTile(
              icon: Icon(Icons.save),
              titleString: 'Saved',
            ),
            Divider(color: Colors.grey),
            CustomListTile(icon: Icon(Icons.help), titleString: 'Help'),
            CustomListTile(
              icon: Icon(Icons.settings),
              titleString: 'Settings',
            ),
            CustomListTile(
              icon: Icon(Icons.logout),
              titleString: 'Logout',
            ),
          ],
        ),
      ),
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
                          'https://images.unsplash.com/photo-1598271715740-1f5f17b4daf5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=80'),
                  PictureCard(
                      url:
                          'https://images.unsplash.com/photo-1594226836843-c616633251fb?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80'),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  PictureCard(
                      url:
                          'https://images.unsplash.com/photo-1485726696757-76885c99f0f5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=80'),
                  PictureCard(
                      url:
                          'https://images.unsplash.com/photo-1558900242-e8ecf1f4bb77?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1430&q=80'),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  PictureCard(
                      url:
                          'https://images.unsplash.com/photo-1547961547-321889bff29e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80'),
                  PictureCard(
                      url:
                          'https://images.unsplash.com/photo-1573434681103-b534ef6922ee?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80'),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  PictureCard(
                      url:
                          'https://images.unsplash.com/photo-1495562569060-2eec283d3391?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80'),
                  PictureCard(
                      url:
                          'https://images.unsplash.com/photo-1512311992738-d75a673c40ec?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1421&q=80'),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  PictureCard(
                      url:
                          'https://images.unsplash.com/photo-1581100074504-05360363b17c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=80'),
                  PictureCard(
                      url:
                          'https://images.unsplash.com/photo-1514447191-c1ed4805f65b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=470&q=80'),
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
    );
  }
}

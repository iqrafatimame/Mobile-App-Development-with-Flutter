import 'package:flutter/material.dart';

const List<Tab> tabs = <Tab>[
  Tab(text: 'Elevated Button'),
  Tab(text: 'Floating Action Button'),
  Tab(text: 'Icon Button'),
  Tab(text: 'Text Button'),
  Tab(text: 'Outlined Button'),
];

class TabsForButtons extends StatefulWidget {
  const TabsForButtons({Key key}) : super(key: key);

  @override
  _TabsForButtonsState createState() => _TabsForButtonsState();
}

class _TabsForButtonsState extends State<TabsForButtons> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Builder(builder: (BuildContext context) {
        final TabController tabController = DefaultTabController.of(context);
        tabController.addListener(() {
          if (!tabController.indexIsChanging) {
            return null;
          }
        });
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.brown,
            bottom: const TabBar(
              tabs: tabs,
            ),
          ),
          body: TabBarView(children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Elevated Button",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 25,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.brown),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text("Elevated Button"),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Floating Action Button",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 25,),
                  FloatingActionButton(
                    backgroundColor: Colors.brown,
                    onPressed: () {},
                    child: const Icon(Icons.arrow_right)
                  ),
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Icon Button",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 25,),
                  IconButton(onPressed: () {}, icon: Icon(Icons.thumb_up)),
                ],
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Text Button",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 25,),
                  TextButton(
                    style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.brown
                    ),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text("Text Button"),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              // ignore: deprecated_member_use
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Outlined Button",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 25,),
                  OutlineButton(
                    textColor: Colors.brown,
                    highlightColor: Colors.brown,
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text("Elevated Button"),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        );
      }),
    );
  }
}

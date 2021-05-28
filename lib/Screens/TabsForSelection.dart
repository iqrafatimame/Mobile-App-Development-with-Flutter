
import 'package:flutter/material.dart';
import 'package:flutter_drawer/Custom%20Widgets/CheckBoxListWidget.dart';

const List<Tab> tabs = <Tab>[
  Tab(text: 'Check Box'),
  Tab(text: 'Date & Time Picker'),
  Tab(text: 'Radio'),
  Tab(text: 'Slider'),
  Tab(text: 'Switch'),
  Tab(text: 'Text Field'),
];

enum BestTutorSite { rubyGranger, hollyGabriel }  
/// This is the stateless widget that the main application instantiates.
class TabsForSelection extends StatefulWidget {
  const TabsForSelection({Key key}) : super(key: key);

  @override
  _TabsForSelectionState createState() => _TabsForSelectionState();
}

class _TabsForSelectionState extends State<TabsForSelection> {
  
  double _currentSliderValue = 20;
   BestTutorSite _site = BestTutorSite.rubyGranger;  
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
                    "Check Box",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 25,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: CheckBoxListWidget(stringText: "True",)
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: CheckBoxListWidget(stringText: "false",)
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
                    "Radio Buttons",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 25,),
                  Padding(
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
                  ), 
                  Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 50.0),
                      child: ListTile(  
                        title: const Text('Ruby Granger '),  
                        leading: Radio(  
                          value: BestTutorSite.rubyGranger,  
                          groupValue: _site,  
                          onChanged: (BestTutorSite value) {  
                            setState(() {  
                              _site = value;  
                            });  
                          },  
                        ),  
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
                    "Slider",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 25,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Slider(
                      value: _currentSliderValue,
                      min: 0,
                      max: 100,
                      divisions: 5,
                      label: _currentSliderValue.round().toString(),
                      onChanged: (double value) {
                        setState(() {
                          _currentSliderValue = value;
                        });
                      },
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

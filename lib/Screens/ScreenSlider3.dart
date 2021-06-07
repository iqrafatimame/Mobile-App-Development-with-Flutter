import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_drawer/Screens/Video.dart';

class ScreenSlider3 extends StatefulWidget {
  const ScreenSlider3({Key key}) : super(key: key);

  @override
  _ScreenSlider3State createState() => _ScreenSlider3State();
}

class _ScreenSlider3State extends State<ScreenSlider3> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        title: Text("Image Slider"),
        backgroundColor: Colors.brown,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CarouselSlider(
              options: CarouselOptions(
                height: 500,
                initialPage: 0,
                aspectRatio: 16/9,
                viewportFraction: 0.8,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              ),
              items: [
                Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                      decoration: BoxDecoration(color: Colors.white),
                      child: Image.asset(
                        'images/cardTitle.PNG',
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                      decoration: BoxDecoration(color: Colors.white),
                      child: Image.asset('images/card.PNG'),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                      decoration: BoxDecoration(color:Color(int.parse('0xffb76e22'))),
                      child: 
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[

                           Container(
                            child: Image.asset('images/colImg.PNG',
                                height: 200,
                                width: 200,
                              ),
                            ),
                          Text('To see the demo', 
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                            color: Colors.white
                              ),
                            ),
                          SizedBox(height: 20),
                          OutlinedButton(onPressed: (){
                             Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Video(
                                url:
                                'images/cardWidget.mp4')));
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Cllick Here',
                            style: TextStyle(color: Colors.white),),
                            ),
                          )
                        ],
                      ),
                    )
                 ],
              ),
          ],
        ),
      ),
    );
  }
}

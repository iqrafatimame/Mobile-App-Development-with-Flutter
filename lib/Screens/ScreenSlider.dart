
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ScreenSlider extends StatefulWidget {
  const ScreenSlider({ Key key }) : super(key: key);

  @override
  _ScreenSliderState createState() => _ScreenSliderState();
}

class _ScreenSliderState extends State<ScreenSlider> {
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
          body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.all(10),
            child: CarouselSlider(
              items: [
              Column(
                children: [
                  Text("Assignment 1", style: TextStyle(fontSize: 24),),
                  SizedBox(height: 10,),
                  Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco", style: TextStyle(fontSize: 14),),
                  SizedBox(height: 10,),
                  Container(
                    height: MediaQuery.of(context).size.height,
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage("https://images.unsplash.com/photo-1497032628192-86f99bcd76bc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                ],
              ),

                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage("https://images.unsplash.com/photo-1502945015378-0e284ca1a5be?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],

              options: CarouselOptions(
                    
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    // autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    // autoPlayAnimationDuration: Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class PictureCard extends StatelessWidget {
  
  final String url;
  PictureCard({this.url});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 08.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Ink.image(
            image: NetworkImage(url),
            height: 200,
            width: 200,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}

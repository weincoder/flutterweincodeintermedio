import 'package:flutter/material.dart';

class OurImage extends StatelessWidget {
  final String pathImage;
  final double widthImage;
  final double heightImage;
  OurImage({this.pathImage,this.heightImage,this.widthImage});

  @override
  Widget build(BuildContext context) {
    final photo = Container(
      width: this.widthImage,
      height: this.heightImage,
      margin: EdgeInsets.only(right: 20.0),
      decoration: BoxDecoration(
        image: DecorationImage (
          image: AssetImage (this.pathImage),
          fit: BoxFit.cover

        )
      ),

    );

    return photo;
  }

}
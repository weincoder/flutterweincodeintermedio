import 'package:ValhallaApp/custom/widgets/fundation/colors.dart';
import 'package:ValhallaApp/custom/widgets/fundation/ourText.dart';
import 'package:ValhallaApp/custom/widgets/our_image.dart';
import 'package:flutter/material.dart';

class ElementView extends StatelessWidget {
  final String pathImage;
  final String title;
  final String description;
  ElementView ({this.pathImage,this.title,this.description});

  @override
  Widget build(BuildContext context) {
   final element = Container(
     height: 150,
     decoration: BoxDecoration(color: SCALE_02),
     margin: EdgeInsets.all(10.0),
     child:  Row(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         OurImage(pathImage: this.pathImage,
             widthImage: 150,
             heightImage: 150),
         Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             H2(text:this.title),
             NormalText(text: this.description)
           ],
         )
       ],
     ),
   );

   return element;
  }


}
import 'package:ValhallaApp/UI/commons/atoms/ourText.dart';
import 'package:flutter/material.dart';

class AlbumCardModelView extends StatelessWidget {
  final Widget  descTitle;
  final Widget userId;
  final Widget id;
  final double height ;
  const AlbumCardModelView({Key key,  this.descTitle,
    this.userId,  this.id, this.height}) ;
  @override
  Widget build(BuildContext context) {
    dynamic elemento = Container(
        width: 350,
        height: height,
        child: Container(
            margin: EdgeInsets.all(15.0) ,
            child: Column(
                children: [
                  Text('Titulo Album' , key: Key('AlbumTitle')),
                  descTitle,
                  H2(text: 'UserId' ),
                  userId,
                  H2(text: 'Id'),
                  id,
                ]))
    );
    return elemento;
  }
}

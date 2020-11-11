import 'package:ValhallaApp/UI/commons/atoms/ourText.dart';
import 'package:ValhallaApp/domain/models/album/album.dart';
import 'package:flutter/material.dart';

class AlbumCardModelView extends StatelessWidget {
  final Album album ;
  AlbumCardModelView({this.album});
  @override
  Widget build(BuildContext context) {
    return Container(
        child : Column(
            children: [
              H2 (text:'Titulo del album : ${album.title}'),
              H2 (text:'id del album : ${album.id}'),
              H2 (text:'userId: ${album.id}'),
            ]
        )
    );
  }
  
}
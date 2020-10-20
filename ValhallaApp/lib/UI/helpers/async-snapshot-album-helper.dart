import 'package:ValhallaApp/UI/commons/atoms/ourText.dart';
import 'package:ValhallaApp/UI/models_view/album/album_card_model_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget asyncSnapshotAlbumHelper(AsyncSnapshot snapshot) {

  Widget element = Container();

  if (snapshot.hasError){
    element = H2 (text: 'Error : ${snapshot.error.toString()}');
  }else if (!snapshot.hasData){
    element = CircularProgressIndicator();
  }else {
    element =  AlbumCardModelView(album: snapshot.data) ;
  }
  return element;
}
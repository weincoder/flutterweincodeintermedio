
import 'package:ValhallaApp/UI/commons/atoms/ourText.dart';
import 'package:ValhallaApp/UI/models_view/album/album_card_model_view.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
Widget asyncSnapshotAlbumHelper(AsyncSnapshot snapshot) {
  Widget element = Container();
  if (snapshot.hasError){
    element = H2(text: 'Error : ${snapshot.error.toString()}');
  }else if (!snapshot.hasData){
    element =  AlbumCardModelView(
      height: 350,
      descTitle:  CircularProgressIndicator(),
      id: CircularProgressIndicator(),
      userId: CircularProgressIndicator(),
    ) ;
  }else {
    element =  AlbumCardModelView(
      height: 280,
      descTitle:  Text('${snapshot.data.title}', textAlign: TextAlign.center),
      id: Text('${snapshot.data.id}', key: Key('userId'),),
      userId:Text('${snapshot.data.userId}') ,
    ) ;
  }
  return element;
}
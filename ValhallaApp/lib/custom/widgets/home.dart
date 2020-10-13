import 'package:ValhallaApp/custom/Bloc/API/album_api.dart';
import 'package:ValhallaApp/custom/Bloc/API/album_api.dart';
import 'package:ValhallaApp/custom/widgets/fundation/data.dart';
import 'package:ValhallaApp/custom/widgets/fundation/ourText.dart';
import 'package:ValhallaApp/custom/widgets/our_app_bar.dart';
import 'package:ValhallaApp/custom/widgets/our_footer.dart';
import 'package:ValhallaApp/custom/widgets/our_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:flutter/services.dart';
class Home extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OurAppBar(title: 'Valhalla', iconAppBar: Icon(Icons.add_alert)),
      body: Center(
            child: Column(
              children: [
                HeadingImage(text: 'Album',),
                FutureBuilder(
                  future: apiAlbum(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    dynamic element;
                    if (snapshot.hasError){
                      element = H2(text: 'Error  : ${snapshot.error.toString()}');
                    }else if  (!snapshot.hasData){
                      element = CircularProgressIndicator();
                    }else{
                      element = Column(
                        children: [
                          H2( text: 'Titulo Album : ${snapshot.data.title}'),
                          H2( text: 'User id : ${snapshot.data.userId}'),
                          H2( text: 'Titulo id : ${snapshot.data.id}')
                        ],
                      );


                    }
                    return element;

                  },)


              ],
            )
          ),

      bottomNavigationBar: OurFooter(iconLeft: Icon(Icons.home),
        iconRight: Icon(Icons.account_circle),),
    );
  }

}
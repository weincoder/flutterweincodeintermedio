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

  Stream <String>  _getStreamPath() async*{
    for (var item in jsonData){
      await Future.delayed(Duration (seconds: 2));
      yield item['pathImage'];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OurAppBar(title: 'Valhalla', iconAppBar: Icon(Icons.add_alert)),
      body: Center(
            child: Column(
              children: [
                HeadingImage(text: 'Inmediatamente',),
                StreamBuilder(
                stream: _getStreamPath(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  dynamic image = Container();
                  if (snapshot.hasError){
                      image = Text ('Error : ${snapshot.error.toString()}');
                  }
                  switch (snapshot.connectionState){
                    case ConnectionState.none :
                      image = Text ('None');
                      break;
                    case ConnectionState.waiting :
                      image = CircularProgressIndicator();
                      break;
                    case ConnectionState.active :
                      image = OurImage(pathImage: snapshot.data,
                      heightImage: 300,
                        widthImage: 300,
                      );
                      break;
                    case ConnectionState.done :
                      image =Center (child :
                          HeadingImage(text: 'Todo ya se ha mostrado',));
                  }
                  return image;
                },

                )
              ],
            )
          ),

      bottomNavigationBar: OurFooter(iconLeft: Icon(Icons.home),
        iconRight: Icon(Icons.account_circle),),
    );
  }

}
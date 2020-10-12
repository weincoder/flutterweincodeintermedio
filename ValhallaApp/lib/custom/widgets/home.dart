import 'package:ValhallaApp/custom/widgets/fundation/ourText.dart';
import 'package:ValhallaApp/custom/widgets/our_app_bar.dart';
import 'package:ValhallaApp/custom/widgets/our_footer.dart';
import 'package:ValhallaApp/custom/widgets/our_image.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:flutter/services.dart';
class Home extends StatelessWidget {


  Future <String> _getPath () async {
    await Future.delayed(Duration (seconds: 5));
    return 'assets/images/space.jpg';
  }
  Future<String> loadFileAsync() async {
    await Future.delayed(Duration (seconds: 2));
    return   rootBundle.loadString('assets/datos.txt');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OurAppBar(title: 'Valhalla', iconAppBar: Icon(Icons.add_alert)),
      body: Center(
            child: Column(
              children: [
                HeadingImage(text: 'Inmediatamente',),
                FutureBuilder(
                    future: _getPath(),
                    builder: (contex, AsyncSnapshot snaphot){
                      if (snaphot.hasError){
                        return H2 (text: 'Error : ${snaphot.error.toString()}');
                      }
                      if (!snaphot.hasData){
                        return CircularProgressIndicator();
                      }
                      return OurImage(pathImage: snaphot.data, widthImage: 250, heightImage: 250);

                    }),
                FutureBuilder(
                    future: loadFileAsync(),
                    builder: (contex, AsyncSnapshot snaphot){
                      if (snaphot.hasError){
                        return H2 (text: 'Error : ${snaphot.error.toString()}');
                      }
                      if (!snaphot.hasData){
                        return CircularProgressIndicator();
                      }
                      return H2 (text: snaphot.data,);

                    }),
              ],
            )
          ),

      bottomNavigationBar: OurFooter(iconLeft: Icon(Icons.home),
        iconRight: Icon(Icons.account_circle),),
    );
  }

}
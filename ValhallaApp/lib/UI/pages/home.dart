
import 'file:///C:/Users/Admin/code/flutterweincodeintermedio/ValhallaApp/lib/UI/commons/molecules/our_app_bar.dart';
import 'file:///C:/Users/Admin/code/flutterweincodeintermedio/ValhallaApp/lib/UI/commons/molecules/our_footer.dart';
import 'file:///C:/Users/Admin/code/flutterweincodeintermedio/ValhallaApp/lib/UI/commons/atoms/our_image.dart';
import 'package:ValhallaApp/infraestucture/driven_adapter/album_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../commons/atoms/ourText.dart';
import '../commons/data.dart';
class Home extends StatelessWidget {
  Future<String> _getPath() async {
    await Future.delayed(Duration(seconds: 3));
    return 'assets/images/tree.jpg';
  }
  Stream<String> _getPathStream() async* {
    for (var item in jsonData){
      await Future.delayed(Duration(seconds: 2));
      yield item ['pathImage'];
    }
  }

  Future <String> loadFile () async {
    await Future.delayed(Duration(seconds: 3));
    return rootBundle.loadString('assets/asdasd.txt');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OurAppBar(title: 'Valhalla', iconAppBar: Icon(Icons.add_alert)),
      body: Center(
          child: FutureBuilder(
            future: apiAlbum(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              Widget element = Container();
              if (snapshot.hasError){
                element = H2 (text: 'Error : ${snapshot.error.toString()}');
              }else if (!snapshot.hasData){
                element = CircularProgressIndicator();
              }else {
                element = Column(
                  children: [
                    H2 (text:'Titulo del album : ${snapshot.data.title}'),
                    H2 (text:'id del album : ${snapshot.data.id}'),
                    H2 (text:'userId: ${snapshot.data.userId}'),
                  ]

                );
              }
              return element;
            },),

      ),
      bottomNavigationBar: OurFooter(iconLeft: Icon(Icons.home), iconRight: Icon(Icons.account_circle),),
    );
  }

}
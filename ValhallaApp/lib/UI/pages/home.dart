import 'package:ValhallaApp/UI/commons/atoms/ourText.dart';
import 'package:ValhallaApp/UI/commons/molecules/our_app_bar.dart';
import 'package:ValhallaApp/UI/commons/molecules/our_footer.dart';
import 'package:ValhallaApp/bloc/Album/try.dart';
import 'package:flutter/material.dart';


class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: OurAppBar(title: 'Valhalla', iconAppBar: Icon(Icons.add_alert)),
      body: Center(
          child: FutureBuilder(
            future: algo(),
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
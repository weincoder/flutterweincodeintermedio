import 'package:ValhallaApp/custom/widgets/fundation/data.dart';
import 'package:flutter/material.dart';

import 'element_view.dart';

class OurListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   final listView = Container(
     child: ListView(
       children: [
         for (final item in jsonData)
          ElementView(pathImage: item['pathImage'],
           title: item['title'],
           description: item['description'],
         ),

       ],
     ),
   );


   return listView;


  }

}
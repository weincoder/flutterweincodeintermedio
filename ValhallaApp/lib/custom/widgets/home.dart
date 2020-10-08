import 'package:ValhallaApp/custom/widgets/our_app_bar.dart';
import 'package:ValhallaApp/custom/widgets/our_footer.dart';
import 'package:ValhallaApp/custom/widgets/our_image.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: OurAppBar(title: 'Valhalla', iconAppBar: Icon(Icons.add_alert)),
      body: Center(
          child: OurImage(pathImage: 'assets/images/tree.jpg',
            widthImage: 300,
            heightImage: 300,
          ),
      ),
      bottomNavigationBar: OurFooter(iconLeft: Icon(Icons.home), iconRight: Icon(Icons.account_circle),),
    );
  }

}
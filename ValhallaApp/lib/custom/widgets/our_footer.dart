import 'package:ValhallaApp/custom/widgets/fundation/colors.dart';
import 'package:flutter/material.dart';

class OurFooter extends StatelessWidget {
  final Icon iconLeft;
  final Icon iconRight;

  OurFooter({
    this.iconRight = const Icon(Icons.airline_seat_individual_suite),
    this.iconLeft = const Icon(Icons.add_a_photo)
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.0,
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: this.iconLeft,
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: this.iconRight,
            title: Text('School'),
          ),
        ],
        currentIndex: 0,
        selectedItemColor: BRAND_PRIMARY,
        unselectedItemColor: BRAND_SECONDARY,
        backgroundColor: SCALE_03,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        iconSize: 30.0,
        onTap: (index) {
          print(index);
        },
      )
    );
  }

}
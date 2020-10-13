import 'package:ValhallaApp/custom/widgets/fundation/colors.dart';
import 'package:flutter/material.dart';

import 'fundation/ourText.dart';

class OurAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final Icon iconAppBarr;

  OurAppBar({
    this.title = 'Default',
    this.iconAppBarr = const Icon(Icons.add)
});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: SCALE_05,
      title: H1(text: this.title),
      actions: [
        IconButton(
            icon: this.iconAppBarr,
            onPressed: () => {print("hola Mundo")},
        ),
        IconButton(
          icon: const Icon(Icons.navigate_next),
          onPressed: () => {print("hola Mundo!")},
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);


}
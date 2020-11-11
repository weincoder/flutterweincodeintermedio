import '../tokens/colors.dart';
import '../atoms/ourText.dart';
import 'package:flutter/material.dart';

class OurAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;

  final Icon iconAppBar;

  OurAppBar({
    this.title = "Default",
    this.iconAppBar = const Icon(Icons.phone)
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: SCALE_05,
      title: H1(text: this.title),
      actions: [
        IconButton(icon: this.iconAppBar, onPressed: () => {print("hola mundo")}),
        IconButton(icon: const Icon(Icons.navigate_next), onPressed: () => {print("hola mundo")})
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

}
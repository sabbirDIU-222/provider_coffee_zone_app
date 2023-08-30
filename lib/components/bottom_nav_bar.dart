import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomnavBar extends StatelessWidget {
  final void Function(int)? ontapChange;


  BottomnavBar({required this.ontapChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25.0),
      child: GNav(
        onTabChange: (value) => ontapChange!(value),
        mainAxisAlignment: MainAxisAlignment.center,
          activeColor: Colors.grey[700],
          color: Colors.grey[500],
          tabBackgroundColor: Colors.grey.shade100,
          tabBorderRadius: 24,
          tabActiveBorder: Border.all(color: Colors.grey),
          tabs:const [
        GButton(icon: Icons.home, text: 'Shop',),
        GButton(icon: Icons.shopping_bag_outlined, text: 'My Shop',),
      ]),
    );
  }
}

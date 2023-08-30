import 'package:coffee_zone/components/bottom_nav_bar.dart';
import 'package:coffee_zone/const.dart';
import 'package:coffee_zone/pages/myshop.dart';
import 'package:coffee_zone/pages/shop.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int selectedIndex = 0;

  void navigateBottonBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> pages = [
    Shop(),
    MyShop(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomnavBar(
        ontapChange: (index) => navigateBottonBar(index),
      ),
      body: pages[selectedIndex],
    );
  }
}

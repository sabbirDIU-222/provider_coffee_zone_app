import 'package:coffee_zone/models/coffee_shop.dart';
import 'package:coffee_zone/pages/homepage.dart';
import 'package:coffee_zone/pages/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context) => CoffeeShop(),
  builder: (context, child) => MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'coffee_zone',
      home: SplashScreen(),
    );
  }
}

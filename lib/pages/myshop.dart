import 'package:coffee_zone/components/coffee_list_tile.dart';
import 'package:coffee_zone/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/coffee_model.dart';

class MyShop extends StatefulWidget {
  const MyShop({Key? key}) : super(key: key);

  @override
  State<MyShop> createState() => _MyShopState();
}

class _MyShopState extends State<MyShop> {
  void removeItem(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).removeItemfromList(coffee);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) => SafeArea(
          child: Padding(
        padding: EdgeInsets.all(25.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text('Your Cart',
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1)),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
                child: ListView.builder(
              itemCount: value.usercart.length,
              itemBuilder: (context, index) {
                Coffee eachcoffee = value.usercart[index];
                return CoffeeListTile(
                  coffee: eachcoffee,
                  onpressedfunction: () => removeItem(eachcoffee),
                  icon: Icon(Icons.delete),
                );
              },
            )),

            Container(
              width: double.infinity,
            padding: EdgeInsets.all(25.0),
              child: Center(
                child: Text('Pay Now',style: TextStyle(color: Colors.white,fontSize: 16),),
              ),
              decoration: BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.circular(10.0)
              ),
            )

          ],
        ),
      )),
    );
  }
}

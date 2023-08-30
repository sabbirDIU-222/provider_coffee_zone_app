import 'package:coffee_zone/components/coffee_list_tile.dart';
import 'package:coffee_zone/models/coffee_model.dart';
import 'package:coffee_zone/models/coffee_shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Shop extends StatefulWidget {

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  //add item to the  cart
  void addToCart(Coffee coffee){
    Provider.of<CoffeeShop>(context,listen: false).addItemtotheList(coffee);
    
    // showing a dialog
    showDialog(context: context, builder: (context) => AlertDialog(
      title: Text('sucessfully add to the cart'),
    ),);

    print('somehthing went wrong');
  }


  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) {
        return SafeArea(
          child: Padding(
            padding: EdgeInsets.all(25.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'How Would you like your Coffee?',
                    style: TextStyle(fontSize: 25.0, letterSpacing: 1),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Expanded(
                    child: ListView.builder(
                  itemCount: value.coffeeshop.length,
                  itemBuilder: (context, index) {
                    // get individual coffee
                    Coffee eachCoffee = value.coffeeshop[index];
                    // return only coffee name
                    return CoffeeListTile(
                      coffee: eachCoffee,
                      onpressedfunction: () => addToCart(eachCoffee),
                      icon: Icon(Icons.add),
                    );
                  },
                ))
              ],
            ),
          ),
        );
      },
    );
  }
}

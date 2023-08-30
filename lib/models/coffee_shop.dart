import 'package:flutter/material.dart';
import 'coffee_model.dart';

class CoffeeShop extends ChangeNotifier{
  // coffee for sale list
  final List<Coffee> _shop = [
    Coffee(name: 'Black Coffee', price: '30/-', imageurl: 'lib/images/black.png'),
    Coffee(name: 'Lattee Coffee', price: '340/-', imageurl: 'lib/images/lattee.png'),
    Coffee(name: 'Green Tea', price: '35/-', imageurl: 'lib/images/tea.png'),
  ];

  // user cart
List<Coffee> usercart = [];

 // get coffee list
List<Coffee> get coffeeshop => _shop;

 // get cart list
List<Coffee> get getusercart  => usercart;

 // add list to cart
void addItemtotheList(Coffee coffee){
  usercart.add(coffee);
  notifyListeners();
}

 // remove item from cart
void removeItemfromList(Coffee coffee){
  usercart.remove(coffee);
  notifyListeners();
}

}
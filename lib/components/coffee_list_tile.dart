import 'package:coffee_zone/models/coffee_model.dart';
import 'package:flutter/material.dart';

class CoffeeListTile extends StatelessWidget {
  final Coffee coffee;
  final void Function()  onpressedfunction;
  final Widget icon;

  CoffeeListTile({required this.coffee,required this.onpressedfunction,required this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0), color: Colors.grey[300]),
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: ListTile(
        title: Text(
          coffee.name,
          style: TextStyle(
              fontSize: 17, letterSpacing: 1, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(coffee.price),
        leading: Image.asset(
          coffee.imageurl,
          fit: BoxFit.cover,
        ),
        trailing: IconButton(
          icon: icon,
          onPressed: () => onpressedfunction(),
        ),
      ),
    );
  }
}

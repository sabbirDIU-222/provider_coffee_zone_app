import 'package:flutter/material.dart';
import 'package:coffee_zone/pages/homepage.dart'; // Import your homepage or destination screen

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // You can add any loading logic here if needed
    // For now, let's just use a simple delayed redirection
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Homepage()), // Replace with your destination screen
      );
    });

    return Scaffold(
      backgroundColor: Colors.white, // Set your desired background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Coffee Zone', // Your app name or logo
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black, // Set your desired text color
              ),
            ),
            SizedBox(height: 10,),
            Image.asset('lib/images/lattee.png',fit: BoxFit.cover,)
          ],
        ),
      ),
    );
  }
}

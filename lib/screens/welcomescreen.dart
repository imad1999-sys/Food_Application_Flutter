import 'dart:ui';
import '../screens/welcomescreen/components/loginbutton.dart';
import "../screens/welcomescreen/components/signupbutton.dart";
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Container(
            color: Colors.white,
            child: Center(
              child: Image.asset('assets/images/food.jpg'),
            ),
          )),
          Expanded(
              child: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Welcome to MyOrder",
                  style: TextStyle(
                      fontSize: 30,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500),
                ),
                Column(
                  children: [
                    Text(
                        'Order what you want from recipes and desserts and ...'),
                  ],
                ),
                LoginButton(btnColor: Colors.green, textColor: Colors.white),
                SignupButton(btnColor: Colors.white, textColor: Colors.green),
              ],
            ),
          )),
        ],
      ),
    );
  }
}

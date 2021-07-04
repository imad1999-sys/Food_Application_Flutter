import 'package:flutter/material.dart';
import 'package:food_app/screens/signupscreen/component/SignupButton.dart';
import 'package:food_app/screens/signupscreen/component/SignupTextField.dart';
import 'package:food_app/screens/signupscreen/component/SignupTitle.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {}),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 170),
              child: SignupTitle(name: "Sign up", textColor: Colors.white, size: 40),
            ),
            Column(
              children: [
                SignupTextField(
                  hintTextname: "name",
                ),
                SizedBox(
                  height: 30,
                ),
                SignupTextField(hintTextname: "email"),
                SizedBox(
                  height: 30,
                ),
                SignupTextField(hintTextname: "password"),
                SizedBox(
                  height: 30,
                ),
                SignupTextField(hintTextname: "confirm password"),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SignupButton(btnText: "Cancel", btnTextColor: Colors.black, btnColor: Colors.white , btnTextSize: 20),
                SizedBox(width: 20,),
                SignupButton(btnText: "Register", btnTextColor: Colors.white, btnColor: Colors.red , btnTextSize: 20),
              ],
            )
          ],
        ),
      ),
    );
  }
}

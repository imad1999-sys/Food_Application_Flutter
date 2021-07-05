import "package:flutter/material.dart";
import 'package:food_app/screens/loginscreen/components/LoginButton.dart';
import 'package:food_app/screens/loginscreen/components/LoginTextField.dart';
import 'package:food_app/screens/loginscreen/components/RegistrationLink.dart';
import '../loginscreen/components/LoginTitle.dart';

class LoginScreen extends StatelessWidget {
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
              child: LoginTitle(
                name: "Login",
                textColor: Colors.white,
                size: 40,
              ),
            ),
            Column(
              children: [
                LoginTextField(
                  hintTextname: "username",
                  textFieldIcon: Icons.supervised_user_circle,
                  textFieldIconColor: Colors.white,
                  obscureText: false,
                  textInputType: TextInputType.text,
                ),
                SizedBox(
                  height: 30,
                ),
                LoginTextField(
                  hintTextname: "password",
                  textFieldIcon: Icons.lock,
                  textFieldIconColor: Colors.white,
                  obscureText: true,
                  textInputType: TextInputType.visiblePassword,
                ),
                LoginButton(
                  btnText: "log in",
                  btnTextColor: Colors.white,
                  btnColor: Colors.red,
                  btnTextSize: 20,
                ),
                RegistrationLink(
                    firstText: "Do you not have an account",
                    firstTextColor: Colors.white,
                    secondText: "register now",
                    secondTextColor: Colors.grey),
              ],
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:food_app/screens/signupscreen/component/SignupButton.dart';
import 'package:food_app/screens/signupscreen/component/SignupTextField.dart';
import 'package:food_app/screens/signupscreen/component/SignupTitle.dart';

class SignupPage extends StatefulWidget {
  static Pattern pattern =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  RegExp regExp = RegExp(SignupPage.pattern);
  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  TextEditingController firstNameTextController = TextEditingController();
  TextEditingController lastNameTextController = TextEditingController();
  TextEditingController emailTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();

  void validation() {
    if (firstNameTextController.text.trim().isEmpty ||
        firstNameTextController.text.trim() == null) {
      _globalKey.currentState
          .showSnackBar(SnackBar(content: Text('first name is empty')));
      return;
    }
    if (lastNameTextController.text.trim().isEmpty ||
        lastNameTextController.text.trim() == null) {
      _globalKey.currentState
          .showSnackBar(SnackBar(content: Text('last name is empty')));
      return;
    }
    if (emailTextController.text.trim().isEmpty ||
        emailTextController.text.trim() == null) {
      _globalKey.currentState
          .showSnackBar(SnackBar(content: Text('email is empty')));
      return;
    } else if (!regExp.hasMatch(emailTextController.text)) {
      _globalKey.currentState
          .showSnackBar(SnackBar(content: Text('please enter a valid email')));
      return;
    }
    if (passwordTextController.text.trim().isEmpty ||
        passwordTextController.text.trim() == null) {
      _globalKey.currentState
          .showSnackBar(SnackBar(content: Text('password is empty')));
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
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
              child: SignupTitle(
                  name: "Sign up", textColor: Colors.white, size: 40),
            ),
            Column(
              children: [
                SignupTextField(
                  textEditingController: firstNameTextController,
                  obscureText: false,
                  hintTextname: "first name",
                  textInputType: TextInputType.text,
                ),
                SizedBox(
                  height: 30,
                ),
                SignupTextField(
                  textEditingController: lastNameTextController,
                  obscureText: false,
                  hintTextname: "last name",
                  textInputType: TextInputType.text,
                ),
                SizedBox(
                  height: 30,
                ),
                SignupTextField(
                  textEditingController: emailTextController,
                  obscureText: false,
                  hintTextname: "email",
                  textInputType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: 30,
                ),
                SignupTextField(
                    textEditingController: passwordTextController,
                    obscureText: false,
                    hintTextname: "password",
                    textInputType: TextInputType.visiblePassword),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SignupButton(
                  btnText: "Cancel",
                  btnTextColor: Colors.black,
                  btnColor: Colors.white,
                  btnTextSize: 20,
                  onTap: null,
                ),
                SizedBox(
                  width: 20,
                ),
                SignupButton(
                  btnText: "Register",
                  btnTextColor: Colors.white,
                  btnColor: Colors.red,
                  btnTextSize: 20,
                  onTap: validation,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

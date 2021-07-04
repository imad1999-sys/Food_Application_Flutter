import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final String btnText;
  final Color btnTextColor;
  final Color btnColor;
  final double btnTextSize;

  LoginButton(
      {@required this.btnText,
      @required this.btnTextColor,
      @required this.btnColor,
      @required this.btnTextSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: RaisedButton(
        onPressed: () {},
        color: btnColor,
        child: Text(
          btnText,
          style: TextStyle(
            color: btnTextColor,
            fontSize: btnTextSize,
          ),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}

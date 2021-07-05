import 'package:flutter/material.dart';

class SignupButton extends StatelessWidget {
  final String btnText;
  final Color btnTextColor;
  final Color btnColor;
  final double btnTextSize;
  final Function onTap;
  SignupButton({
    @required this.btnText,
    @required this.btnTextColor,
    @required this.btnColor,
    @required this.btnTextSize,
    @required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      padding: EdgeInsets.all(20),
      child: RaisedButton(
        onPressed: onTap,
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

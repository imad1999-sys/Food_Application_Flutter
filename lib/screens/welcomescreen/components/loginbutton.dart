import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  Color btnColor;
  Color textColor;

  LoginButton({@required Color btnColor , @required Color textColor});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 50,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.green, width: 2),
            borderRadius: BorderRadius.circular(20)),
        child: Text(
          'Signin',
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
        ),
        onPressed: (){

        },
      ),
    );
  }
}
